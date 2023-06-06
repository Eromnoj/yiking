import 'package:flutter/material.dart';
import 'package:yiking/extensions/buildcontext/loc.dart';
import 'package:yiking/views/widgets/app_button_widget.dart';
import 'package:yiking/views/widgets/custom_text_widget.dart';

Future<void> questionDialog(
    BuildContext context, TextEditingController textController) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return SimpleDialog(
        title: titleText(context.loc.askQuestion),
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
            child: CustomButtonAnimated(
              onTap: () {
                Navigator.of(context).pop();
              },
              width: 300,
              height: 50,
              child: titleText(
                context.loc.okButton,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          )
        ],
      );
    },
  );
}
