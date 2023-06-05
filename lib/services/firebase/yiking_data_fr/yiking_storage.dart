import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_constant.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_exceptions.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_structure.dart';

class YikingStorage {
  Locale language = const Locale('en');
  late CollectionReference<Map<String, dynamic>> yiking;

  YikingStorage(this.language) {
    if (language == const Locale('fr')) {
      yiking = FirebaseFirestore.instance.collection('yiking_db');
    } else {
      yiking = FirebaseFirestore.instance.collection('yiking_db_en');
    }
  }
  Stream<Iterable<YikingStructure>> allYikings() =>
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
  // static final YikingStorage _shared = YikingStorage._sharedInstance();
  // YikingStorage._sharedInstance();
  // factory YikingStorage() => _shared;
}
