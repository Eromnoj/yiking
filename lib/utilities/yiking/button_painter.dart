import 'package:flutter/material.dart';

class ButtonPainter extends CustomPainter {
  int select;

  Size containerSize;

  ButtonPainter(this.select, this.containerSize);

  @override
  void paint(Canvas canvas, Size size) {
    size = containerSize;
    Rect rect = const Offset(0, 0) & size;
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, const Radius.circular(10)),
      Paint()
        ..color = const Color.fromARGB(255, 199, 197, 208)
        ..style = PaintingStyle.fill,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, const Radius.circular(10)),
      Paint()
        ..color = const Color.fromARGB(255, 34, 34, 43)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 3,
    );

    switch (select) {
      case 6:
        _mYin(canvas);
        break;
      case 7:
        _yang(canvas);
        break;
      case 8:
        _yin(canvas);
        break;
      default:
        _mYang(canvas);
    }
  }

  void _yang(Canvas canvas) {
    double yOffset =
        ((containerSize.height / 2) - ((containerSize.width / 15) / 2));
    Rect yang = Offset((containerSize.width / 10), yOffset) &
        Size((containerSize.width / 1.25), (containerSize.width / 15));
    canvas.drawRect(yang, Paint());
  }

  void _yin(Canvas canvas) {
    double yOffset =
        ((containerSize.height / 2) - ((containerSize.width / 15) / 2));
    Rect yinL = Offset((containerSize.width / 10), yOffset) &
        Size((containerSize.width / 3), (containerSize.width / 15));
    canvas.drawRect(yinL, Paint());
    Rect yinR = Offset((containerSize.width / 1.76), yOffset) &
        Size((containerSize.width / 3), (containerSize.width / 15));
    canvas.drawRect(yinR, Paint());
  }

  void _mYang(Canvas canvas) {
    double yOffset =
        ((containerSize.height / 2) - ((containerSize.width / 15) / 2));
    Rect yang = Offset((containerSize.width / 10), yOffset) &
        Size((containerSize.width / 1.25), (containerSize.width / 15));
    canvas.drawRect(yang, Paint());

    canvas.drawCircle(
        Offset(
            (containerSize.width / 2), (yOffset + (containerSize.width / 30))),
        (containerSize.width / 16.76),
        Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = containerSize.width / 40);
  }

  void _mYin(Canvas canvas) {
    double yOffset =
        ((containerSize.height / 2) - ((containerSize.width / 15) / 2));
    Rect yinL = Offset((containerSize.width / 10), yOffset) &
        Size((containerSize.width / 3), (containerSize.width / 15));
    canvas.drawRect(yinL, Paint());
    Rect yinR = Offset((containerSize.width / 1.76), yOffset) &
        Size((containerSize.width / 3), (containerSize.width / 15));
    canvas.drawRect(yinR, Paint());

    canvas.drawLine(
        Offset((containerSize.width / 2.31),
            (yOffset - (containerSize.width / 30))),
        Offset((containerSize.width / 1.76),
            (yOffset + (containerSize.width / 10))),
        Paint()..strokeWidth = containerSize.width / 40);

    canvas.drawLine(
        Offset((containerSize.width / 1.76),
            (yOffset - (containerSize.width / 30))),
        Offset((containerSize.width / 2.31),
            (yOffset + (containerSize.width / 10))),
        Paint()..strokeWidth = containerSize.width / 40);
  }

  @override
  bool shouldRepaint(covariant ButtonPainter oldDelegate) {
    return true;
  }
}
