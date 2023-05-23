import 'package:flutter/material.dart';
import 'package:yiking/routes/constants_routes.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_structure.dart';

import 'custom_text_widget.dart';

Widget yikingListTile(BuildContext context, YikingStructure yikingEntry) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(
        uniqueYikingRoute,
        arguments: yikingEntry,
      );
    },
    child: Card(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        contentText(
          yikingEntry.symbol,
          fontSize: 35,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                titleText(yikingEntry.name),
                contentText(yikingEntry.yikingId.toString()),
              ],
            ),
            contentText(
              yikingEntry.translate,
              textOverflow: TextOverflow.clip,
            ),
          ],
        ),
      ],
    )),
  );
}
