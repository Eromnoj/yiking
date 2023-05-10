import 'package:flutter/material.dart';
import 'package:yiking/utilities/yiking/yiking_draw.dart';
import 'package:yiking/utilities/yiking/yiking_painter.dart';

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

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomPaint(
                painter: YiKingPainter(draw, Size(width / 2, height / 2)),
                child: SizedBox(
                  height: height / 2,
                  width: width / 2,
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Center(child: Text('SYM')),
                    ),
                    SizedBox(
                      child: Text('NAME'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('traduction'),
                      Text(yikingDraw.getIndex(drawIndex: draw).toString()),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
        const Text('Texte 1'),
        const Text('Texte 2'),
        const Text('Texte 3'),
        const Text('Texte 4'),
      ],
    ),
  );
}
