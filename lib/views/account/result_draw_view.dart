import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yiking/services/firebase/draw/draw_structure.dart';
import 'package:yiking/utilities/yiking/yiking_draw.dart';
import 'package:yiking/views/account/widgets/custom_text_widget.dart';
import 'package:yiking/views/account/widgets/show_draw_result.dart';

class ResultDrawView extends StatefulWidget {
  const ResultDrawView({super.key});

  @override
  State<ResultDrawView> createState() => _ResultDrawViewState();
}

class _ResultDrawViewState extends State<ResultDrawView> {
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

    // print(eq(yikingDraw.mutation(), yikingDraw.getDraw));
    return Scaffold(
      appBar: AppBar(
        title: titleText(
          'Mon tirage',
          fontSize: 25,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              titleText(draw!.question, fontSize: 30),
              showDrawResult(yikingDraw, width, height),
              !eq(yikingDraw.mutation(), yikingDraw.getDraw)
                  ? showDrawResult(yikingDraw, width, height, what: 'mutate')
                  : const SizedBox(),
              showDrawResult(yikingDraw, width, height, what: 'nuclear'),
              showDrawResult(yikingDraw, width, height, what: 'opposite'),
            ],
          ),
        ),
      ),
    );
  }
}
