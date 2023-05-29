import 'package:flutter/material.dart';
import 'package:yiking/routes/constants_routes.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_structure.dart';
import 'package:yiking/styles/path/background_clipper.dart';

import 'custom_text_widget.dart';

Widget yikingListTile(
  BuildContext context,
  YikingStructure yikingEntry,
  int index,
) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(
        uniqueYikingRoute,
        arguments: yikingEntry,
      );
    },
    child: Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          ClipPath(
            clipper: BackgroundClipperLineTitle(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 15,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  index.isEven ? Colors.amber : Colors.red,
                  index.isEven ? Colors.red : Colors.amber,
                ],
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                contentText(yikingEntry.symbol,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    shadow: [const Shadow(color: Colors.white, blurRadius: 7)]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        titleText(yikingEntry.name,
                            fontWeight: FontWeight.bold,
                            shadow: [
                              const Shadow(color: Colors.white, blurRadius: 7)
                            ]),
                        contentText(yikingEntry.yikingId.toString(),
                            fontWeight: FontWeight.bold,
                            shadow: [
                              const Shadow(color: Colors.white, blurRadius: 7)
                            ]),
                      ],
                    ),
                    contentText(yikingEntry.translate,
                        textOverflow: TextOverflow.fade,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        shadow: [
                          const Shadow(color: Colors.white, blurRadius: 7)
                        ]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
