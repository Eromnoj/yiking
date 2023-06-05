import 'package:flutter/material.dart';
import 'package:yiking/extensions/buildcontext/loc.dart';
import 'package:yiking/services/firebase/draw/draw_storage.dart';
import 'package:yiking/services/firebase/draw/draw_structure.dart';

Future<void> deleteDialog(
    BuildContext context, DrawStructure element, DrawStorage draw) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return SimpleDialog(
        title: Text(
          context.loc.confirmDrawDelete,
          textAlign: TextAlign.center,
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
                child: Text(
                  context.loc.cancelButton,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                onPressed: () {
                  draw.deleteNote(documentId: element.documentId);
                  Navigator.of(context).pop();
                },
                child: Text(context.loc.confirmButton),
              ),
            ],
          ),
        ],
      );
    },
  );
}
