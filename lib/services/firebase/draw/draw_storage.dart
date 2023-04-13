import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yiking/services/firebase/draw/draw_constants.dart';
import 'package:yiking/services/firebase/draw/draw_exceptions.dart';
import 'package:yiking/services/firebase/draw/draw_structure.dart';

class DrawStorage {
  final draws = FirebaseFirestore.instance.collection('draws');

  Future<void> deleteNote({required String documentId}) async {
    try {
      await draws.doc(documentId).delete();
    } catch (e) {
      throw CouldNotDeleteDrawException();
    }
  }

  Stream<Iterable<DrawStructure>> allDraws({required String userId}) =>
      draws.snapshots().map((event) =>
          event.docs.map((doc) => DrawStructure.fromSnapShot(doc)).where(
                (draw) => draw.userId == userId,
              ));

  Future<DrawStructure> createNewDraw({
    required String userId,
    required DateTime date,
    required String question,
    required List<int> draw,
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
}
