import 'package:flutter/material.dart';
import 'package:yiking/routes/constants_routes.dart';
import 'package:yiking/utilities/dialogs/confirm_delete_dialog.dart';

import 'package:yiking/services/firebase/draw/draw_storage.dart';
import 'package:yiking/services/firebase/draw/draw_structure.dart';

Widget customListTile(
    BuildContext context, DrawStorage draw, DrawStructure element, int index) {
  return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          uniqueDrawRoute,
          arguments: element,
        );
      },
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(element.question),
                Text(element.date.toString()),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.delete_outline),
              onPressed: () async {
                await deleteDialog(context, element, draw);
              },
            ),
          ],
        ),
      ));
}
