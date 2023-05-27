import 'package:flutter/material.dart';
import 'package:yiking/views/account/widgets/custom_text_widget.dart';

Widget explanationContainer(String text) {
  return Padding(
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
  );
}
