import 'package:flutter/material.dart';
import 'package:yiking/extensions/buildcontext/loc.dart';

Future<void> errorDialog(BuildContext context, String text) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: Text(context.loc.genericError),
        content: Text(text),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(context.loc.okButton))
        ],
      );
    },
  );
}
