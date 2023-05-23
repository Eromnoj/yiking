import 'package:flutter/material.dart';
import 'package:yiking/views/account/widgets/custom_text_widget.dart';

Widget explanationContainer(String text) {
  return Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 199, 197, 208),
      border: Border.all(
        width: 1,
        color: Colors.black,
        style: BorderStyle.solid,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          titleText(
            'Interprétation',
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 34, 34, 43),
          ),
          contentText(
            text,
            fontSize: 16,
            color: const Color.fromARGB(255, 34, 34, 43),
          ),
        ],
      ),
    ),
  );
}
