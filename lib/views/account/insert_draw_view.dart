import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/routes/constants_routes.dart';
import 'package:yiking/services/firebase/draw/draw_structure.dart';
import 'package:yiking/utilities/dialogs/question_dialog.dart';
import 'package:yiking/utilities/yiking/yiking_painter.dart';

import 'package:yiking/services/auth/auth_service.dart';
import 'package:yiking/services/auth/auth_user.dart';
import 'package:yiking/services/auth/bloc/auth_bloc.dart';
import 'package:yiking/services/auth/bloc/auth_state.dart';
import 'package:yiking/services/firebase/draw/draw_storage.dart';
import 'package:yiking/views/account/widgets/yiking_button.dart';

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
  @override
  void initState() {
    super.initState();
    _questionField = TextEditingController();
    _draw = DrawStorage();
    currentUser = AuthService().currentUser;
    Timer.run(() => questionDialog(context, _questionField));
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
                              painter: YiKingPainter(draw, Size(width, height)),
                              child: SizedBox(
                                height: height,
                                width: width,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: draw.length < 6
                              ? Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            yikingButton(
                                                6, draw, setState, context),
                                            yikingButton(
                                                7, draw, setState, context),
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
                                                8, draw, setState, context),
                                            yikingButton(
                                                9, draw, setState, context),
                                          ],
                                        ),
                                      ),
                                    ])
                              : Padding(
                                  padding: const EdgeInsets.all(36.0),
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      if (_questionField.text.isEmpty) {
                                        await questionDialog(
                                            context, _questionField);
                                      } else {
                                        result = await _draw.createNewDraw(
                                          userId: currentUser!.id,
                                          date: DateTime.now(),
                                          question: _questionField.text,
                                          draw: draw,
                                        );
                                        if (context.mounted) {
                                          Navigator.of(context)
                                              .pushNamedAndRemoveUntil(
                                            yikingDrawResultRoute,
                                            (route) => false,
                                            arguments: result,
                                          );
                                        }
                                      }
                                    },
                                    child: Text(draw.length < 6
                                        ? 'Tirage'
                                        : 'Voir le résultat'),
                                  ),
                                ),
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
