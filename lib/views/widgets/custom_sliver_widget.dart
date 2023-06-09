import 'package:flutter/material.dart';
import 'package:yijing/styles/path/background_clipper.dart';
import 'package:yijing/views/widgets/custom_text_widget.dart';

Widget customAppBarSliver(String text, BuildContext context) {
  return SliverAppBar(
    expandedHeight: 100.0,
    flexibleSpace: FlexibleSpaceBar(
      background: ClipPath(
        clipper: BackgroundClipperAppBar(),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.topCenter,
              end: AlignmentDirectional.bottomCenter,
              colors: [
                Colors.red,
                Colors.amber,
              ],
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 2,
        ),
      ),
      centerTitle: true,
      title: titleText(
        text,
        fontSize: 25,
        color: Colors.black,
        padding: 8,
      ),
    ),
  );
}
