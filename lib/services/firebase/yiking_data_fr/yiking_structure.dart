import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yijing/services/firebase/yiking_data_fr/yiking_constant.dart';

class YikingStructure {
  final int yikingId;
  final String name;
  final String translate;
  final String symbol;
  final String prophecy;
  final String prophecyExplanation;
  final List lines;
  final List linesExplanation;

  YikingStructure(
      this.yikingId,
      this.name,
      this.translate,
      this.symbol,
      this.prophecy,
      this.lines,
      this.prophecyExplanation,
      this.linesExplanation);

  YikingStructure.fromJson(Map<String, dynamic> json, int id)
      : yikingId = json[id][yikingIdField],
        name = json[id][nameField],
        translate = json[id][translateField],
        symbol = json[id][symbolField],
        prophecy = json[id][prophecyField],
        prophecyExplanation = json[id][prophecyExplanationField],
        linesExplanation = json[id][linesExplanationField],
        lines = json[id][linesField];

  YikingStructure.fromSnapShot(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : yikingId = snapshot.data()[yikingIdField],
        name = snapshot.data()[nameField],
        translate = snapshot.data()[translateField],
        symbol = snapshot.data()[symbolField],
        prophecy = snapshot.data()[prophecyField],
        prophecyExplanation = snapshot.data()[prophecyExplanationField],
        linesExplanation = snapshot.data()[linesExplanationField],
        lines = snapshot.data()[linesField];
}
