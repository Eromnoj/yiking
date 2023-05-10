import 'package:flutter/material.dart';
import 'package:yiking/services/firebase/draw/draw_storage.dart';
import 'package:yiking/services/firebase/draw/draw_structure.dart';

Future<void> deleteDialog(
    BuildContext context, DrawStructure element, DrawStorage draw) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return SimpleDialog(
        title: const Text(
          'Confirmez-vous la suppression de ce tirage ?',
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
                child: const Text(
                  'Annuler',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              TextButton(
                onPressed: () {
                  draw.deleteNote(documentId: element.documentId);
                  Navigator.of(context).pop();
                },
                child: const Text('Confirmer'),
              ),
            ],
          ),
        ],
      );
    },
  );
}
