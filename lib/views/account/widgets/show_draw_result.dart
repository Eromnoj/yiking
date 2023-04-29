import 'package:flutter/material.dart';
import 'package:yiking/utilities/yiking/yiking_draw.dart';
import 'package:yiking/utilities/yiking/yking_painter.dart';

Widget showDrawResult(YikingDraw yikingDraw, double width, double height,
    {String what = ''}) {
  List<dynamic> draw;
  switch (what) {
    case 'mutate':
      draw = yikingDraw.mutation();
      break;
    case 'opposite':
      draw = yikingDraw.opposite();
      break;
    case 'nuclear':
      draw = yikingDraw.nuclear();
      break;
    default:
      draw = yikingDraw.getDraw;
  }

  return Column(
    children: [
      Text(yikingDraw.getIndex(drawIndex: draw).toString()),
      CustomPaint(
        painter: YiKingPainter(draw, Size(width, height)),
        child: SizedBox(
          height: height,
          width: width,
        ),
      ),
    ],
  );
}
