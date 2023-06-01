import 'package:flutter/material.dart';
import 'package:yiking/utilities/yiking/button_painter.dart';
import 'package:yiking/views/widgets/app_button_widget.dart';
import 'package:yiking/views/widgets/custom_text_widget.dart';

Widget yikingButton(
  int line,
  Function onTap,
) {
  return SizedBox(
    width: 140,
    height: 75,
    child: Column(
      children: [
        CustomButtonAnimated(
          onTap: onTap,
          width: 140,
          height: 40,
          child: CustomPaint(
            painter: ButtonPainter(line, const Size(140, 30)),
            child: const SizedBox(
              width: 140,
              height: 30,
            ),
          ),
        ),
        contentText('(${line.toString()})'),
      ],
    ),
  );
}
