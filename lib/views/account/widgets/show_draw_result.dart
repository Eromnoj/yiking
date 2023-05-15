import 'package:flutter/material.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_storage.dart';
import 'package:yiking/utilities/yiking/yiking_draw.dart';
import 'package:yiking/utilities/yiking/yiking_painter.dart';
import 'package:yiking/views/account/widgets/custom_text_widget.dart';

Widget showDrawResult(
  YikingDraw yikingDraw,
  double width,
  double height, {
  String what = '',
}) {
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
    child: FutureBuilder(
        future: YikingStorage().getOne(yikingDraw.getIndex(drawIndex: draw)),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return Card(
                elevation: 9,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      what == ''
                          ? titleText('Hexagramme principal', fontSize: 30)
                          : what == 'mutate'
                              ? titleText('Mutation', fontSize: 27)
                              : what == 'opposite'
                                  ? titleText('Opposé', fontSize: 27)
                                  : titleText('Nucléaire', fontSize: 27),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                color: Color(0xFFFFFFFF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: CustomPaint(
                              painter: YiKingPainter(
                                  draw, Size(width / 2, height / 2)),
                              child: SizedBox(
                                height: height / 2,
                                width: width / 2,
                              ),
                            ),
                          ),
                          titleText(
                            snapshot.data!.yikingId.toString(),
                            fontSize: 30,
                          ),
                          titleText(
                            snapshot.data!.symbol,
                            fontSize: 40.0,
                          ),
                          titleText(
                            snapshot.data!.name,
                            fontSize: 30,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            contentText(snapshot.data!.translate,
                                textOverflow: null),
                          ],
                        ),
                      ),
                      titleText('Jugement', fontSize: 25),
                      contentText(snapshot.data!.prophecy),
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
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        titleText(
                                          '${content[0]}: ',
                                          fontWeight: FontWeight.bold,
                                        ),
                                        contentText(
                                          content[1],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        )
                                      ],
                                    );
                                  } else {
                                    return const SizedBox();
                                  }
                                })
                          ],
                        ),
                    ],
                  ),
                ),
              );
            default:
              return const CircularProgressIndicator();
          }
        }),
  );
}
