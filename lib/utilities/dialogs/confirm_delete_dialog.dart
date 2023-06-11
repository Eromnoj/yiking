import 'package:flutter/material.dart';
import 'package:yijing/extensions/buildcontext/loc.dart';
import 'package:yijing/services/firebase/draw/draw_storage.dart';
import 'package:yijing/services/firebase/draw/draw_structure.dart';

import '../../views/widgets/custom_text_widget.dart';

Future<void> deleteDialog(
    BuildContext context, DrawStructure element, DrawStorage draw) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return SimpleDialog(
        title: titleText(
          context.loc.confirmDrawDelete,
        ),
        children: [
          Text(
            element.question,
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: contentText(
                  context.loc.cancelButton,
                  color: Colors.red,
                ),
              ),
              TextButton(
                onPressed: () {
                  draw.deleteNote(documentId: element.documentId);
                  Navigator.of(context).pop();
                },
                child: contentText(context.loc.confirmButton),
              ),
            ],
          ),
        ],
      );
    },
  );
}
