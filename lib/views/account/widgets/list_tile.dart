import 'package:flutter/material.dart';
import 'package:yiking/routes/constants_routes.dart';
import 'package:yiking/utilities/dialogs/confirm_delete_dialog.dart';

import 'package:yiking/services/firebase/draw/draw_storage.dart';
import 'package:yiking/services/firebase/draw/draw_structure.dart';

import 'custom_text_widget.dart';

Widget customListTile(
    BuildContext context, DrawStorage draw, DrawStructure element) {
  return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          uniqueDrawRoute,
          arguments: element,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: contentText(
                        element.question,
                      ),
                    ),
                    contentText(
                      '${element.date.day} / ${element.date.month} / ${element.date.year}',
                      fontSize: 16,
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(
                    Icons.delete_outline,
                  ),
                  onPressed: () async {
                    await deleteDialog(context, element, draw);
                  },
                ),
              ],
            ),
          ),
        ),
      ));
}
