import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yiking/styles/path/background_clipper.dart';

Widget titleText(String text,
    {double fontSize = 20,
    Color? color,
    double padding = 8,
    FontWeight fontWeight = FontWeight.normal,
    List<Shadow> shadow = const [
      Shadow(
        color: Colors.white,
        blurRadius: 7,
      ),
    ]}) {
  return Padding(
    padding: EdgeInsets.all(padding),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: fontSize,
          color: color ?? color,
          fontWeight: fontWeight,
          fontFamily: GoogleFonts.architectsDaughter().fontFamily,
          shadows: shadow),
    ),
  );
}

Widget lineTitleText(
  String text,
  BuildContext context, {
  double fontSize = 20,
  Color? color,
  double padding = 8,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return Padding(
    padding: EdgeInsets.all(padding),
    child: Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        ClipPath(
          clipper: BackgroundClipperLineTitle(),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width / 8,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.red.shade400,
              Colors.pinkAccent,
            ])),
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: fontSize,
            color: color ?? color,
            fontWeight: fontWeight,
            fontFamily: GoogleFonts.architectsDaughter().fontFamily,
            shadows: const [
              Shadow(
                color: Colors.white,
                blurRadius: 7,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget contentText(String text,
    {double fontSize = 17,
    Color? color,
    double padding = 4,
    FontWeight fontWeight = FontWeight.normal,
    TextOverflow? textOverflow,
    TextAlign textAlign = TextAlign.left}) {
  return Padding(
    padding: EdgeInsets.all(padding),
    child: Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        color: color ?? color,
        fontWeight: fontWeight,
        overflow: textOverflow ?? textOverflow,
        shadows: const [
          Shadow(
            color: Colors.white,
            blurRadius: 7,
          ),
        ],
      ),
    ),
  );
}

Widget customTextField(
  String label,
  TextEditingController controller,
  TextInputType inputType,
  bool password,
) {
  return TextField(
    controller: controller,
    keyboardType: inputType,
    obscureText: password,
    decoration: InputDecoration(
      labelText: label,
      floatingLabelStyle: const TextStyle(
        color: Color.fromARGB(255, 153, 40, 40),
        fontSize: 20,
      ),
    ),
  );
}
