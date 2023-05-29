import 'package:flutter/material.dart';
import 'package:yiking/styles/path/background_clipper.dart';
import 'package:yiking/views/account/widgets/custom_text_widget.dart';

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
        shadow: [
          const Shadow(
            color: Colors.white,
            blurRadius: 7,
          ),
        ],
      ),
    ),
  );
}
