import 'package:flutter/material.dart';
import 'package:yiking/views/account/widgets/custom_text_widget.dart';

Widget yikingCardWidget(
  BuildContext context,
  List<String> hexagram,
  String symbol,
  String name,
  CustomPainter painter,
  double height,
  double width,
) {
  return // Display card with a stack
      SizedBox(
    width: MediaQuery.of(context).size.width / 1.4,
    child: Stack(
      children: [
        Image.asset(
          'assets/img/card/back/${hexagram[1]}-back.png',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/img/card/front/${hexagram[0]}-front.png',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 38,
            right: 38,
            top: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: CustomPaint(
                  painter: painter,
                  child: SizedBox(
                    height: height / 3,
                    width: width / 3,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  titleText(
                    symbol,
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    padding: 0,
                    color: const Color.fromARGB(255, 177, 178, 224),
                    shadow: [
                      const Shadow(
                        color: Color.fromARGB(255, 19, 19, 39),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  titleText(
                    name,
                    fontWeight: FontWeight.bold,
                    padding: 0,
                    color: const Color.fromARGB(255, 171, 173, 229),
                    shadow: [
                      const Shadow(
                        color: Color.fromARGB(255, 34, 34, 70),
                        blurRadius: 5,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/img/card/frame.png',
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
}
