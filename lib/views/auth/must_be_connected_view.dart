import 'package:flutter/material.dart';
import 'package:yijing/extensions/buildcontext/loc.dart';
import 'package:yijing/views/widgets/custom_sliver_widget.dart';
import 'package:yijing/views/widgets/custom_text_widget.dart';

class MustBeConnected extends StatefulWidget {
  const MustBeConnected({super.key});

  @override
  State<MustBeConnected> createState() => _MustBeConnectedState();
}

class _MustBeConnectedState extends State<MustBeConnected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        customAppBarSliver(context.loc.appTitle, context),
        SliverToBoxAdapter(
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60.0,
                  ),
                  titleText(context.loc.mustBeConnectedTitle),
                  const SizedBox(
                    height: 60.0,
                  ),
                  contentText(
                    context.loc.mustBeConnectedText,
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
        ),
      ],
    ));
  }
}
