import 'package:flutter/material.dart';
import 'package:yijing/extensions/buildcontext/loc.dart';

import '../../views/widgets/custom_text_widget.dart';

Future<void> passwordResetDialog(BuildContext context, String text) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: titleText(context.loc.info),
        content: contentText(text),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: contentText(context.loc.okButton))
        ],
      );
    },
  );
}
