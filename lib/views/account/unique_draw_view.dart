import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:yijing/extensions/buildcontext/loc.dart';
import 'package:yijing/services/firebase/draw/draw_structure.dart';
import 'package:yijing/utilities/yiking/yiking_draw.dart';
import 'package:yijing/views/widgets/custom_sliver_widget.dart';
import 'package:yijing/views/widgets/custom_text_widget.dart';
import 'package:yijing/views/widgets/show_draw_result.dart';

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
      body: CustomScrollView(
        slivers: [
          customAppBarSliver(context.loc.myDrawScreenTitle, context),
          SliverToBoxAdapter(child: titleText(draw!.question, fontSize: 30)),
          SliverToBoxAdapter(
              child: showDrawResult(yikingDraw, width, height, context)),
          SliverToBoxAdapter(
              child: showDrawResult(yikingDraw, width, height, context,
                  what: 'nuclear')),
          SliverToBoxAdapter(
              child: showDrawResult(yikingDraw, width, height, context,
                  what: 'opposite')),
        ],
      ),
    );
  }
}
