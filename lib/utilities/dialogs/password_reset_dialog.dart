import 'package:flutter/material.dart';
import 'package:yijing/extensions/buildcontext/loc.dart';

Future<void> passwordResetDialog(BuildContext context, String text) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: Text(context.loc.info),
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
