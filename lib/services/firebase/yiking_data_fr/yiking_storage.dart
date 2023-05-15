import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_constant.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_exceptions.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_structure.dart';

class YikingStorage {
  final yiking = FirebaseFirestore.instance.collection('yiking_db');

  Stream<Iterable<YikingStructure>> allYikings({required String userId}) =>
      yiking.orderBy(yikingIdField).snapshots().map((event) =>
          event.docs.map((doc) => YikingStructure.fromSnapShot(doc)));

  Future<YikingStructure> getOne(int id) async {
    try {
      QuerySnapshot<Map<String, dynamic>> doc =
          await yiking.where(yikingIdField, isEqualTo: id).get();
      YikingStructure result = YikingStructure.fromSnapShot(doc.docs[0]);
      return result;
    } catch (e) {
      throw CouldNotGetUniqueYikingException();
    }
  }

  // creating a singleton
  static final YikingStorage _shared = YikingStorage._sharedInstance();
  YikingStorage._sharedInstance();
  factory YikingStorage() => _shared;
}
