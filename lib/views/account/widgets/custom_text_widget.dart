import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget titleText(
  String text, {
  double fontSize = 20,
  Color? color,
  double padding = 8,
  FontWeight fontWeight = FontWeight.normal,
}) {
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
      ),
    ),
  );
}

Widget contentText(String text,
    {double fontSize = 17,
    Color? color,
    double padding = 4,
    FontWeight fontWeight = FontWeight.normal,
    TextOverflow? textOverflow}) {
  return Padding(
    padding: EdgeInsets.all(padding),
    child: Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color ?? color,
        fontWeight: fontWeight,
        overflow: textOverflow ?? textOverflow,
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
