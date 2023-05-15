import 'package:flutter/material.dart';

class YiKingPainter extends CustomPainter {
  List<dynamic> tirage;

  Size containerSize;

  YiKingPainter(this.tirage, this.containerSize);

  @override
  void paint(Canvas canvas, Size size) {
    size = containerSize;
    Rect rect = const Offset(0, 0) & size;
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, const Radius.circular(10)),
      Paint()
        ..color = const Color.fromARGB(255, 143, 22, 22)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 3,
    );

    for (int i = 0; i < tirage.length; i++) {
      switch (tirage[i]) {
        case 6:
          _mYin(canvas, i);
          break;
        case 7:
          _yang(canvas, i);
          break;
        case 8:
          _yin(canvas, i);
          break;
        default:
          _mYang(canvas, i);
      }
    }
  }

  void _yang(Canvas canvas, int pos) {
    double yOffset =
        containerSize.width - ((containerSize.width / 6.5) * (pos + 1));
    Rect yang = Offset((containerSize.width / 10), yOffset) &
        Size((containerSize.width / 1.25), (containerSize.width / 15));
    canvas.drawRect(yang, Paint());
  }

  void _yin(Canvas canvas, int pos) {
    double yOffset =
        containerSize.width - ((containerSize.width / 6.5) * (pos + 1));
    Rect yinL = Offset((containerSize.width / 10), yOffset) &
        Size((containerSize.width / 3), (containerSize.width / 15));
    canvas.drawRect(yinL, Paint());
    Rect yinR = Offset((containerSize.width / 1.76), yOffset) &
        Size((containerSize.width / 3), (containerSize.width / 15));
    canvas.drawRect(yinR, Paint());
  }

  void _mYang(Canvas canvas, int pos) {
    double yOffset =
        containerSize.width - ((containerSize.width / 6.5) * (pos + 1));
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

  void _mYin(Canvas canvas, int pos) {
    double yOffset =
        containerSize.width - ((containerSize.width / 6.5) * (pos + 1));
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
  bool shouldRepaint(covariant YiKingPainter oldDelegate) {
    return true;
  }
}
