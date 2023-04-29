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
          TextField(
            controller: textController,
            keyboardType: TextInputType.text,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'))
        ],
      );
    },
  );
}
