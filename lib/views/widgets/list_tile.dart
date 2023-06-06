import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:yiking/routes/constants_routes.dart';
import 'package:yiking/styles/path/background_clipper.dart';
import 'package:yiking/utilities/dialogs/confirm_delete_dialog.dart';

import 'package:yiking/services/firebase/draw/draw_storage.dart';
import 'package:yiking/services/firebase/draw/draw_structure.dart';

import 'custom_text_widget.dart';

Widget customListTile(
    BuildContext context, DrawStorage draw, DrawStructure element, int index) {
  return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          uniqueDrawRoute,
          arguments: element,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Stack(
          alignment: AlignmentDirectional.centerStart,
          children: [
            ClipPath(
              clipper: BackgroundClipperExplanation(),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height / 8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      index.isOdd
                          ? Colors.red.shade500
                          : Colors.orange.shade600,
                      index.isOdd
                          ? Colors.orange.shade600
                          : Colors.yellow.shade600,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Padding(
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
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      contentText(
                        DateFormat.yMd(
                                Localizations.localeOf(context).languageCode)
                            .format(element.date),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  IconButton(
                    icon: ImageIcon(
                      const AssetImage('assets/img/icons/cross.png'),
                      color: Colors.red.shade800,
                    ),
                    onPressed: () async {
                      await deleteDialog(context, element, draw);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ));
}
