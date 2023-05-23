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
      color: Colors.transparent,
      image: coin == 2
          ? const DecorationImage(image: AssetImage('assets/img/coin/pile.png'))
          : const DecorationImage(
              image: AssetImage('assets/img/coin/face.png'),
            ),
      // boxShadow: const [
      //   BoxShadow(
      //     blurRadius: 5,
      //     blurStyle: BlurStyle.outer,
      //   ),
      // ],
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
