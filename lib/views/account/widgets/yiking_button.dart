import 'package:flutter/material.dart';
import 'package:yiking/utilities/yiking/button_painter.dart';

Widget yikingButton(
    int line, List<dynamic> draw, Function setState, BuildContext context) {
  return GestureDetector(
    onTap: () {
      setState(() {
        draw.add(line);
      });
    },
    child: CustomPaint(
      painter: ButtonPainter(
          line,
          Size((MediaQuery.of(context).size.width / 3),
              (MediaQuery.of(context).size.width / 9))),
      child: SizedBox(
        width: (MediaQuery.of(context).size.width / 3),
        height: (MediaQuery.of(context).size.width / 9),
      ),
    ),
  );
}
