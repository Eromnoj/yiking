import 'package:flutter/material.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_storage.dart';
import 'package:yiking/styles/path/background_clipper.dart';
import 'package:yiking/utilities/yiking/yiking_draw.dart';
import 'package:yiking/utilities/yiking/yiking_painter.dart';
import 'package:yiking/views/account/widgets/custom_text_widget.dart';
import 'package:yiking/views/account/widgets/explanation_container_widget.dart';
import 'package:yiking/views/account/widgets/mutate_line_widget.dart';

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
  yikingCard = yikingDraw.getImageId(drawImage: draw);

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
                              )
                            : what == 'opposite'
                                ? titleText(
                                    'Opposé',
                                    fontSize: 27,
                                  )
                                : titleText(
                                    'Nucléaire',
                                    fontSize: 27,
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
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.4,
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/img/card/back/${yikingCard[1]}-back.png',
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                'assets/img/card/front/${yikingCard[0]}-front.png',
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 38,
                                  right: 38,
                                  top: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      child: CustomPaint(
                                        painter: mainHexagram,
                                        child: SizedBox(
                                          height: height / 3,
                                          width: width / 3,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        titleText(
                                          snapshot.data!.symbol,
                                          fontSize: 45.0,
                                          fontWeight: FontWeight.bold,
                                          padding: 0,
                                          color: const Color.fromARGB(
                                              255, 177, 178, 224),
                                          shadow: [
                                            const Shadow(
                                              color: Color.fromARGB(
                                                  255, 19, 19, 39),
                                              blurRadius: 5,
                                            ),
                                          ],
                                        ),
                                        titleText(
                                          snapshot.data!.name,
                                          fontWeight: FontWeight.bold,
                                          padding: 0,
                                          color: const Color.fromARGB(
                                              255, 171, 173, 229),
                                          shadow: [
                                            const Shadow(
                                              color: Color.fromARGB(
                                                  255, 34, 34, 70),
                                              blurRadius: 5,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                'assets/img/card/frame.png',
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
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
                          child: Stack(
                            alignment: AlignmentDirectional.centerEnd,
                            children: [
                              ClipPath(
                                clipper: BackgroundClipperExplanation(),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height: MediaQuery.of(context).size.width / 3,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Colors.greenAccent,
                                        Colors.amber,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              explanationContainer(
                                  snapshot.data!.prophecyExplanation),
                            ],
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
