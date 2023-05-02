import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/routes/constants_routes.dart';
import 'package:yiking/services/firebase/draw/draw_constants.dart';
import 'package:yiking/services/firebase/draw/draw_structure.dart';
import 'package:yiking/utilities/yiking/yiking_draw.dart';
import 'package:yiking/views/account/result_draw_view.dart';
import 'package:yiking/views/account/widgets/coin_container.dart';
import 'package:yiking/utilities/dialogs/question_dialog.dart';
import 'package:yiking/utilities/yiking/yking_painter.dart';

import '../../services/auth/auth_service.dart';
import '../../services/auth/auth_user.dart';
import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';
import '../../services/firebase/draw/draw_storage.dart';

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
      appBar: AppBar(
        title: const Text(
          'Nouveau tirage',
        ),
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return LayoutBuilder(
            builder: (context, constraint) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: Container(
                    color: Colors.deepOrange[100],
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            await questionDialog(context, _questionField);
                          },
                          child: const Text(
                            'Changer la question',
                          ),
                        ),
                        Text(_questionField.text),
                        Center(
                          child: Card(
                            elevation: 10,
                            color: Colors.amber[50],
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: CustomPaint(
                              painter:
                                  YiKingPainter(draw.draw, Size(width, height)),
                              child: SizedBox(
                                height: height,
                                width: width,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            coinContainer(draw.coin1, click),
                            coinContainer(draw.coin2, click, pos: true),
                            coinContainer(draw.coin3, click),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () async {
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
                                  Navigator.of(context).pushNamedAndRemoveUntil(
                                    yikingDrawResultRoute,
                                    (route) => false,
                                    arguments: result,
                                  );
                                }
                              }
                            }
                          },
                          child: Text(draw.draw.length < 6
                              ? 'Tirage'
                              : 'Voir le résultat'),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}