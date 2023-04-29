import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yiking/services/firebase/draw/draw_structure.dart';
import 'package:yiking/utilities/yiking/yiking_draw.dart';
import 'package:yiking/views/account/widgets/show_draw_result.dart';

class UniqueDrawView extends StatefulWidget {
  const UniqueDrawView({super.key});

  @override
  State<UniqueDrawView> createState() => _UniqueDrawViewState();
}

class _UniqueDrawViewState extends State<UniqueDrawView> {
  late YikingDraw yikingDraw;
  DrawStructure? draw;

  Function eq = const ListEquality().equals;
  @override
  void initState() {
    yikingDraw = YikingDraw();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.5;
    double height = width;

    final modalRoute = ModalRoute.of(context);
    if (modalRoute != null) {
      draw = modalRoute.settings.arguments as DrawStructure;
      yikingDraw.setDraw(draw!.draw);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon tirage'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(draw!.question),
              const Text('Resultat :'),
              showDrawResult(yikingDraw, width, height),
              !eq(yikingDraw.mutation(), yikingDraw.getDraw)
                  ? showDrawResult(yikingDraw, width, height, what: 'mutate')
                  : const Text('Pas de mutations'),
              showDrawResult(yikingDraw, width, height, what: 'nuclear'),
              showDrawResult(yikingDraw, width, height, what: 'opposite'),
            ],
          ),
        ),
      ),
    );
  }
}
