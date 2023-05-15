import 'package:flutter/material.dart';

Future<void> questionDialog(
    BuildContext context, TextEditingController textController) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return SimpleDialog(
        title: const Text('Posez votre question'),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textController,
              keyboardType: TextInputType.text,
              maxLines: null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK')),
          )
        ],
      );
    },
  );
}
