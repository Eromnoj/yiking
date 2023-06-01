import 'package:flutter/material.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_structure.dart';
import 'package:yiking/utilities/yiking/yiking_draw.dart';
import 'package:yiking/utilities/yiking/yiking_painter.dart';
import 'package:yiking/views/widgets/custom_sliver_widget.dart';
import 'package:yiking/views/widgets/custom_text_widget.dart';
import 'package:yiking/views/widgets/explanation_container_widget.dart';
import 'package:yiking/views/widgets/yiking_card_widget.dart';

import '../../styles/path/background_clipper.dart';

class UniqueYikingView extends StatefulWidget {
  const UniqueYikingView({super.key});

  @override
  State<UniqueYikingView> createState() => _UniqueYikingViewState();
}

class _UniqueYikingViewState extends State<UniqueYikingView> {
  YikingStructure? yikingEntry;

  @override
  Widget build(BuildContext context) {
    final modalRoute = ModalRoute.of(context);
    if (modalRoute != null) {
      yikingEntry = modalRoute.settings.arguments as YikingStructure;
    }

    YikingDraw yikingDraw = YikingDraw();

    List<String> yikingCard = yikingDraw.getImageById(yikingEntry!.yikingId);

    double width = MediaQuery.of(context).size.width * 0.5;
    double height = MediaQuery.of(context).size.width * 0.5;

    List<dynamic> cardToListInt(List<String> card) {
      String listJoined = card.join('');
      List<String> listSplitted = listJoined.split('');
      List<int> intList = [];
      for (int i = 0; i < listSplitted.length; i++) {
        intList.add(int.parse(listSplitted[i]));
      }

      return intList;
    }

    YiKingPainter painter = YiKingPainter(
      cardToListInt(yikingCard),
      Size(
        width / 3,
        height / 3,
      ),
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          customAppBarSliver(yikingEntry!.name, context),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipPath(
                          clipper: BackgroundClipperHexagram(),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.lightBlue,
                                  Colors.indigo.shade900,
                                ],
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.width,
                          ),
                        ),
                        yikingCardWidget(
                          context,
                          yikingCard,
                          yikingEntry!.symbol,
                          yikingEntry!.name,
                          painter,
                          width,
                          height,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          contentText(
                            yikingEntry!.translate,
                            textOverflow: null,
                          ),
                          titleText(
                            yikingEntry!.yikingId.toString(),
                          ),
                        ],
                      ),
                    ),
                    titleText(
                      'Jugement',
                      fontSize: 25,
                    ),
                    contentText(
                      yikingEntry!.prophecy,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    explanationContainer(
                      yikingEntry!.prophecyExplanation,
                      context,
                    ),
                    Column(
                      children: [
                        ListView.builder(
                            primary: false,
                            shrinkWrap: true,
                            itemCount: yikingEntry!.lines.length,
                            itemBuilder: (context, id) {
                              List<String> content =
                                  yikingEntry!.lines[id].toString().split(':');

                              return Column(
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
                                  explanationContainer(
                                    yikingEntry!.linesExplanation[id],
                                    context,
                                    mutate: true,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  )
                                ],
                              );
                            })
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
