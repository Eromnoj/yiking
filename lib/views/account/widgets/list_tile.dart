import 'package:flutter/material.dart';
import 'package:yiking/routes/constants_routes.dart';

import '../../../services/firebase/draw/draw_storage.dart';
import '../../../services/firebase/draw/draw_structure.dart';

Widget customListTile(
    BuildContext context, DrawStorage draw, DrawStructure element, int index) {
  return GestureDetector(
      onTap: () {
        print(element);
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
              onPressed: () {
                draw.deleteNote(documentId: element.documentId);
              },
            ),
          ],
        ),
      ));
}
