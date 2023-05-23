import 'package:flutter/material.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_structure.dart';
import 'package:yiking/views/account/widgets/custom_text_widget.dart';
import 'package:yiking/views/account/widgets/explanation_container_widget.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: titleText(
          yikingEntry!.name,
          fontSize: 25,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  titleText(
                    yikingEntry!.name,
                    fontSize: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: titleText(
                      yikingEntry!.symbol,
                      fontSize: 80.0,
                    ),
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
                  explanationContainer(yikingEntry!.prophecyExplanation),
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
                                titleText(
                                  '${content[0]}: ',
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
      ),
    );
  }
}
