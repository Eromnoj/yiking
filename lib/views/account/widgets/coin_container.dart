import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

Widget coinContainer(int coin, bool click, {pos = false}) {
  return Container(
    margin: pos
        ? const EdgeInsets.only(bottom: 30)
        : const EdgeInsets.only(bottom: 0),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: coin == 2 ? Colors.black : Colors.red,
      boxShadow: const [
        BoxShadow(
          offset: Offset(2, 1),
          spreadRadius: 2,
          blurRadius: 10,
        ),
      ],
    ),
    height: 80,
    width: 80,
  )
      .animate(
        target: click ? 1 : 0,
      )
      .flipH()
      .then(duration: (Random().nextInt(200) + 50).ms)
      .flipH()
      .then(duration: (Random().nextInt(200) + 50).ms)
      .flipH();
}
