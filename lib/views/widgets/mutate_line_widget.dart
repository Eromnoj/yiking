import 'package:flutter/material.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_storage.dart';
import 'package:yiking/utilities/yiking/yiking_draw.dart';
import 'package:yiking/utilities/yiking/yiking_painter.dart';
import 'package:yiking/views/widgets/custom_text_widget.dart';
import 'package:yiking/views/widgets/explanation_container_widget.dart';

import '../../styles/path/background_clipper.dart';

Widget mutateLine(List<dynamic> draw, int id, List<String> content,
    String lineExplanation, double height, double width, BuildContext context) {
  List<dynamic> bufferDraw = draw.map((e) => e).toList();
  bufferDraw[id] = draw[id] == 6 ? 7 : 8;
  bufferDraw = bufferDraw.map((e) {
    switch (e) {
      case 6:
        return 8;
      case 9:
        return 7;
      default:
        return e;
    }
  }).toList();

  YiKingPainter lineHexagram = YiKingPainter(
    bufferDraw,
    Size(
      width / 3,
      height / 3,
    ),
  );

  int alternateHexagramId = YikingDraw().getIndex(drawIndex: bufferDraw);

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          lineTitleText(
            '${content[0]}: ',
            context,
            fontWeight: FontWeight.bold,
          ),
          contentText(
            content[1],
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              alignment: AlignmentDirectional.centerEnd,
              children: [
                ClipPath(
                  clipper: BackgroundClipperExplanation(),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.lightBlue,
                          Colors.cyan.shade200,
                        ],
                      ),
                    ),
                  ),
                ),
                explanationContainer(lineExplanation, context, mutate: true),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FutureBuilder(
                future: YikingStorage().getOne(alternateHexagramId),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.done:
                      return Column(
                        children: [
                          titleText(
                            'Hexagramme dérivé',
                            fontWeight: FontWeight.bold,
                          ),
                          Row(
                            children: [
                              titleText(
                                snapshot.data!.name,
                                fontSize: 18,
                              ),
                              contentText(
                                alternateHexagramId.toString(),
                                fontSize: 17,
                              ),
                            ],
                          ),
                        ],
                      );
                    default:
                      return const SizedBox();
                  }
                },
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  ClipPath(
                    clipper: BackgroundClipperHexagram(),
                    child: Container(
                      height: height / 3,
                      width: width / 3,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Colors.amber,
                        Colors.yellow.shade600,
                      ])),
                    ),
                  ),
                  CustomPaint(
                    painter: lineHexagram,
                    child: SizedBox(
                      height: height / 3,
                      width: width / 3,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    ),
  );
}
