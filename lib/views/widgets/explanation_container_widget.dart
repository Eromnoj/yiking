import 'package:flutter/material.dart';
import 'package:yijing/extensions/buildcontext/loc.dart';
import 'package:yijing/styles/path/background_clipper.dart';
import 'package:yijing/views/widgets/custom_text_widget.dart';

Widget explanationContainer(
  String text,
  BuildContext context, {
  bool mutate = false,
}) {
  return Stack(
    alignment: AlignmentDirectional.centerEnd,
    children: [
      ClipPath(
        clipper: BackgroundClipperExplanation(),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                mutate ? Colors.lightBlue : Colors.greenAccent,
                mutate ? Colors.cyan.shade200 : Colors.amber,
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            titleText(
              context.loc.explanation,
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
    ],
  );
}
