import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yijing/styles/path/background_clipper.dart';

class CustomButtonAnimated extends StatefulWidget {
  final Function onTap;
  final Widget child;
  final double width;
  final double height;

  const CustomButtonAnimated({
    super.key,
    required this.onTap,
    required this.child,
    required this.width,
    required this.height,
  });

  @override
  State<CustomButtonAnimated> createState() => _CustomButtonAnimatedState();
}

class _CustomButtonAnimatedState extends State<CustomButtonAnimated> {
  double animatedScale = 1;
  late double _width;
  late double _height;
  late Function _onTap;

  @override
  void initState() {
    super.initState();
    _width = widget.width;
    _height = widget.height;
    _onTap = widget.onTap;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              animatedScale = 0.9;
            });
            Timer(const Duration(milliseconds: 100), () {
              setState(() {
                animatedScale = 1;
              });
            });
            Timer(const Duration(milliseconds: 210), () {
              _onTap();
            });
          },
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              ClipPath(
                clipper: BackgroundClipperButton(),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  width: _width * animatedScale,
                  height: _height * animatedScale,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.red, Colors.amber],
                    ),
                  ),
                  child: Center(child: widget.child),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
