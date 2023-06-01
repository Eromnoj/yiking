import 'package:flutter/material.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_storage.dart';
import 'package:yiking/styles/path/background_clipper.dart';
import 'package:yiking/utilities/yiking/yiking_draw.dart';
import 'package:yiking/utilities/yiking/yiking_painter.dart';
import 'package:yiking/views/widgets/custom_text_widget.dart';
import 'package:yiking/views/widgets/explanation_container_widget.dart';
import 'package:yiking/views/widgets/mutate_line_widget.dart';
import 'package:yiking/views/widgets/yiking_card_widget.dart';

Widget showDrawResult(
  YikingDraw yikingDraw,
  double width,
  double height, {
  String what = '',
}) {
  List<dynamic> draw;
  List<String> yikingCard;

  Color firstColor;
  Color secondColor;
  switch (what) {
    case 'opposite':
      draw = yikingDraw.opposite();

      firstColor = Colors.red.shade700;
      secondColor = Colors.orange.shade800;
      break;
    case 'nuclear':
      draw = yikingDraw.nuclear();

      firstColor = Colors.lightBlue;
      secondColor = Colors.indigo.shade900;
      break;
    default:
      draw = yikingDraw.getDraw;
      firstColor = Colors.green;
      secondColor = Colors.teal;
  }
  yikingCard = yikingDraw.getImageById(yikingDraw.getIndex(drawIndex: draw));

  YiKingPainter mainHexagram = YiKingPainter(
    draw,
    Size(
      width / 3,
      height / 3,
    ),
  );
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: FutureBuilder(
      future: YikingStorage().getOne(yikingDraw.getIndex(drawIndex: draw)),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  ClipPath(
                    clipper: BackgroundClipperHexagram(),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            firstColor,
                            secondColor,
                          ],
                        ),
                      ),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.width * 1.2,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        what == ''
                            ? titleText(
                                'Hexagramme principal',
                                fontSize: 27,
                                shadow: [
                                  const Shadow(
                                    color: Colors.white,
                                    blurRadius: 7,
                                  ),
                                ],
                              )
                            : what == 'opposite'
                                ? titleText(
                                    'Opposé',
                                    fontSize: 27,
                                    shadow: [
                                      const Shadow(
                                        color: Colors.white,
                                        blurRadius: 7,
                                      ),
                                    ],
                                  )
                                : titleText(
                                    'Nucléaire',
                                    fontSize: 27,
                                    shadow: [
                                      const Shadow(
                                        color: Colors.white,
                                        blurRadius: 7,
                                      ),
                                    ],
                                  ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            contentText(
                              snapshot.data!.translate,
                              textOverflow: null,
                              fontSize: 14,
                            ),
                            titleText(
                              snapshot.data!.yikingId.toString(),
                              fontSize: 16,
                            ),
                          ],
                        ),
                        // Display card with a stack
                        yikingCardWidget(
                          context,
                          yikingCard,
                          snapshot.data!.symbol,
                          snapshot.data!.name,
                          mainHexagram,
                          height,
                          width,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        // Judgement
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              titleText(
                                'Jugement',
                                fontSize: 25,
                                shadow: [
                                  const Shadow(
                                    color: Colors.white,
                                    blurRadius: 7,
                                  ),
                                ],
                              ),
                              contentText(
                                snapshot.data!.prophecy,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: explanationContainer(
                            snapshot.data!.prophecyExplanation,
                            context,
                          ),
                        ),
                        if (what == '')
                          Column(
                            children: [
                              ListView.builder(
                                primary: false,
                                shrinkWrap: true,
                                itemCount: snapshot.data!.lines.length,
                                itemBuilder: (context, id) {
                                  List<String> content = snapshot
                                      .data!.lines[id]
                                      .toString()
                                      .split(':');
                                  if (draw[id] == 6 || draw[id] == 9) {
                                    return mutateLine(
                                        draw,
                                        id,
                                        content,
                                        snapshot.data!.linesExplanation[id],
                                        height,
                                        width,
                                        context);
                                  } else {
                                    return const SizedBox();
                                  }
                                },
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          default:
            return const CircularProgressIndicator();
        }
      },
    ),
  );
}