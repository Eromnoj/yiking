import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yijing/services/auth/auth_service.dart';
import 'package:yijing/services/auth/auth_user.dart';
import 'package:yijing/services/firebase/draw/draw_constants.dart';
import 'package:yijing/services/firebase/draw/draw_exceptions.dart';
import 'package:yijing/services/firebase/draw/draw_structure.dart';

class DrawStorage {
  final draws = FirebaseFirestore.instance.collection('draws');

  final AuthUser user = AuthService().currentUser!;

  Future<void> deleteNote({required String documentId}) async {
    try {
      await draws.doc(documentId).delete();
    } catch (e) {
      throw CouldNotDeleteDrawException();
    }
  }

  Future<bool> deleteAllNotes({required String userId}) async {
    try {
      WriteBatch batch = FirebaseFirestore.instance.batch();

      QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await draws.where(ownedUserIdField, isEqualTo: userId).get();

      for (var doc in querySnapshot.docs) {
        batch.delete(doc.reference);
      }

      batch.commit();

      return true;
      // QuerySnapshot<Map<String, dynamic>> querySnapshot =
      //     await draws.where(ownedUserIdField, isEqualTo: userId).get();

      // for (var doc in querySnapshot.docs) {
      //   await draws.doc(doc.id).delete();
      // }
    } catch (e) {
      throw CouldNotDeleteDrawException();
    }
  }

  Stream<Iterable<DrawStructure>> allDraws({required String userId}) => draws
      .orderBy(dateField, descending: true)
      .where(ownedUserIdField, isEqualTo: user.id)
      .snapshots()
      .map((event) => event.docs.map((doc) => DrawStructure.fromSnapShot(doc)));

  Future<DrawStructure> createNewDraw({
    required String userId,
    required DateTime date,
    required String question,
    required List<dynamic> draw,
  }) async {
    try {
      final document = await draws.add({
        ownedUserIdField: userId,
        dateField: date,
        questionField: question,
        drawField: draw
      });
      final fetchedDraw = await document.get();
      return DrawStructure(
        documentId: fetchedDraw.id,
        userId: userId,
        question: question,
        date: date,
        draw: draw,
      );
    } catch (e) {
      throw CouldNotCreateDrawException();
    }
  }

  // creating a singleton
  // static final DrawStorage _shared = DrawStorage._sharedInstance();
  // DrawStorage._sharedInstance();
  // factory DrawStorage() => _shared;
}
