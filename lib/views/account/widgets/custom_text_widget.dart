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
      style: GoogleFonts.shadowsIntoLight(
        fontSize: fontSize,
        color: color ?? color,
        fontWeight: fontWeight,
      ),
    ),
  );
}

Widget contentText(String text,
    {double fontSize = 18,
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
