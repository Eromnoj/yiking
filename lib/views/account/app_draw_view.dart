import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yiking/extensions/buildcontext/loc.dart';
import 'package:yiking/routes/constants_routes.dart';
import 'package:yiking/services/firebase/draw/draw_structure.dart';
import 'package:yiking/styles/path/background_clipper.dart';
import 'package:yiking/utilities/yiking/yiking_draw.dart';
import 'package:yiking/views/widgets/app_button_widget.dart';
import 'package:yiking/views/widgets/coin_container.dart';
import 'package:yiking/utilities/dialogs/question_dialog.dart';
import 'package:yiking/utilities/yiking/yiking_painter.dart';

import 'package:yiking/services/auth/auth_service.dart';
import 'package:yiking/services/auth/auth_user.dart';
import 'package:yiking/services/firebase/draw/draw_storage.dart';
import 'package:yiking/views/widgets/custom_sliver_widget.dart';
import 'package:yiking/views/widgets/custom_text_widget.dart';

class AppDrawView extends StatefulWidget {
  const AppDrawView({super.key});

  @override
  State<AppDrawView> createState() => _AppDrawViewState();
}

class _AppDrawViewState extends State<AppDrawView> {
  late final AuthUser? currentUser;
  late final DrawStorage _draw;

  late final YikingDraw draw;
  late TextEditingController _questionField;

  DrawStructure? result;

  bool click = true;
  @override
  void initState() {
    super.initState();
    _questionField = TextEditingController();
    _draw = DrawStorage();
    currentUser = AuthService().currentUser;
    draw = YikingDraw();
    Timer.run(
      () => questionDialog(context, _questionField),
    );
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
                  height: 20,
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
                        painter: YiKingPainter(draw.draw, Size(width, height)),
                        child: SizedBox(
                          height: height,
                          width: width,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButtonAnimated(
                  onTap: _onTapCoinOrButton,
                  width: 240,
                  height: 40,
                  child: draw.draw.length < 6
                      ? titleText(
                          context.loc.throwCoins,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )
                      : titleText(
                          context.loc.seeResult,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: _onTapCoinOrButton,
                  child: draw.draw.length < 6
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            coinContainer(draw.coin1, click),
                            coinContainer(draw.coin2, click, pos: true),
                            coinContainer(draw.coin3, click),
                          ],
                        )
                      : const SizedBox(
                          height: 0,
                        ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onTapCoinOrButton() async {
    if (draw.draw.length < 6) {
      setState(() {
        click = false;
      });
      Timer(
        const Duration(milliseconds: 800),
        () => setState(() {
          draw.chance();
          click = true;
        }),
      );
    } else {
      if (_questionField.text.isEmpty) {
        await questionDialog(context, _questionField);
      } else {
        result = await _draw.createNewDraw(
          userId: currentUser!.id,
          date: DateTime.now(),
          question: _questionField.text,
          draw: draw.draw,
        );
        if (context.mounted) {
          Navigator.of(context)
              .pushReplacementNamed(uniqueDrawRoute, arguments: result);
        }
      }
    }
  }
}
