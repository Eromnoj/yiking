import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yijing/services/firebase/draw/draw_constants.dart';

@immutable
class DrawStructure {
  final String documentId;
  final String userId;
  final String question;
  final DateTime date;
  final List<dynamic> draw;

  const DrawStructure({
    required this.documentId,
    required this.userId,
    required this.question,
    required this.date,
    required this.draw,
  });

  DrawStructure.fromSnapShot(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : documentId = snapshot.id,
        userId = snapshot.data()[ownedUserIdField],
        question = snapshot.data()[questionField],
        date = DateTime.parse(snapshot.data()[dateField].toDate().toString()),
        draw = snapshot.data()[drawField];
}
