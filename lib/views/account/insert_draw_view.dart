import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yijing/extensions/buildcontext/loc.dart';
import 'package:yijing/routes/constants_routes.dart';
import 'package:yijing/services/ad_helper.dart';
import 'package:yijing/services/firebase/draw/draw_structure.dart';
import 'package:yijing/utilities/dialogs/question_dialog.dart';
import 'package:yijing/utilities/yiking/yiking_painter.dart';

import 'package:yijing/services/auth/auth_service.dart';
import 'package:yijing/services/auth/auth_user.dart';
import 'package:yijing/services/firebase/draw/draw_storage.dart';
import 'package:yijing/views/widgets/app_button_widget.dart';
import 'package:yijing/views/widgets/custom_sliver_widget.dart';
import 'package:yijing/views/widgets/custom_text_widget.dart';
import 'package:yijing/views/widgets/yiking_button.dart';

import '../../styles/path/background_clipper.dart';

class InsertDrawView extends StatefulWidget {
  const InsertDrawView({super.key});

  @override
  State<InsertDrawView> createState() => _InsertDrawViewState();
}

class _InsertDrawViewState extends State<InsertDrawView> {
  late final AuthUser? currentUser;
  late final DrawStorage _draw;

  List<dynamic> draw = [];
  late TextEditingController _questionField;
  DrawStructure? result;

  bool click = true;
  bool buttonIsActive = true;

  AdHelper intersticial = AdHelper();
  @override
  void initState() {
    super.initState();
    _questionField = TextEditingController();
    _draw = DrawStorage();
    currentUser = AuthService().currentUser;
    Timer.run(() => questionDialog(context, _questionField));
    intersticial.createInterstitialAd();
  }

  @override
  void dispose() {
    super.dispose();
    _questionField.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;
    double height = width;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          customAppBarSliver(context.loc.newDrawScreenTitle, context),
          SliverToBoxAdapter(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 40,
                ),
                titleText(context.loc.myQuestion),
                GestureDetector(
                  onTap: () async {
                    await questionDialog(context, _questionField);
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      ClipPath(
                        clipper: BackgroundClipperLineTitle(),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Colors.red.shade200,
                            Colors.pink.shade300,
                          ])),
                        ),
                      ),
                      contentText(
                        _questionField.text,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      ClipPath(
                        clipper: BackgroundClipperHexagram(),
                        child: Container(
                          height: height,
                          width: width,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Colors.amber,
                                Colors.yellow.shade600,
                              ])),
                        ),
                      ),
                      CustomPaint(
                        painter: YiKingPainter(draw, Size(width, height)),
                        child: SizedBox(
                          height: height,
                          width: width,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: draw.length < 6
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    yikingButton(
                                      6,
                                      () {
                                        setState(() {
                                          draw.add(6);
                                        });
                                      },
                                    ),
                                    yikingButton(
                                      7,
                                      () {
                                        setState(() {
                                          draw.add(7);
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    yikingButton(
                                      8,
                                      () {
                                        setState(() {
                                          draw.add(8);
                                        });
                                      },
                                    ),
                                    yikingButton(
                                      9,
                                      () {
                                        setState(() {
                                          draw.add(9);
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ])
                      : Padding(
                          padding: const EdgeInsets.all(36.0),
                          child: buttonIsActive
                              ? CustomButtonAnimated(
                                  onTap: () async {
                                    if (_questionField.text.isEmpty) {
                                      await questionDialog(
                                          context, _questionField);
                                    } else {
                                      setState(() {
                                        buttonIsActive = false;
                                      });
                                      while (draw.length > 6) {
                                        draw.removeLast();
                                      }
                                      result = await _draw.createNewDraw(
                                        userId: currentUser!.id,
                                        date: DateTime.now(),
                                        question: _questionField.text,
                                        draw: draw,
                                      );

                                      intersticial.showInterstitialAd();
                                      if (context.mounted) {
                                        Navigator.of(context)
                                            .pushReplacementNamed(
                                                uniqueDrawRoute,
                                                arguments: result);
                                      }
                                    }
                                  },
                                  width: 240,
                                  height: 40,
                                  child: titleText(
                                    context.loc.seeResult,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                )
                              : contentText(context.loc.pleaseWait),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
