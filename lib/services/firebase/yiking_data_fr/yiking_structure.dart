import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_constant.dart';

class YikingStructure {
  final int yikingId;
  final String name;
  final String translate;
  final String symbol;
  final String prophecy;
  final List lines;

  YikingStructure(this.yikingId, this.name, this.translate, this.symbol,
      this.prophecy, this.lines);

  YikingStructure.fromJson(Map<String, dynamic> json, int id)
      : yikingId = json[id][yikingIdField],
        name = json[id][nameField],
        translate = json[id][translateField],
        symbol = json[id][symbolField],
        prophecy = json[id][prophecyField],
        lines = json[id][linesField];

  YikingStructure.fromSnapShot(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : yikingId = snapshot.data()[yikingIdField],
        name = snapshot.data()[nameField],
        translate = snapshot.data()[translateField],
        symbol = snapshot.data()[symbolField],
        prophecy = snapshot.data()[prophecyField],
        lines = snapshot.data()[linesField];
}
