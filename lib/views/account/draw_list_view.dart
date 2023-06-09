import 'package:flutter/material.dart';
import 'package:yijing/extensions/buildcontext/loc.dart';
import 'package:yijing/services/firebase/draw/draw_structure.dart';
import 'package:yijing/views/widgets/custom_sliver_widget.dart';
import 'package:yijing/views/widgets/custom_text_widget.dart';
import 'package:yijing/views/widgets/list_tile.dart';

import 'package:yijing/services/auth/auth_service.dart';
import 'package:yijing/services/auth/auth_user.dart';
import 'package:yijing/services/firebase/draw/draw_storage.dart';

class DrawListView extends StatefulWidget {
  const DrawListView({super.key});

  @override
  State<DrawListView> createState() => _DrawListViewState();
}

class _DrawListViewState extends State<DrawListView> {
  late final DrawStorage _draw;
  late final AuthUser? currentUser;

  @override
  void initState() {
    _draw = DrawStorage();
    currentUser = AuthService().currentUser;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _draw.allDraws(userId: currentUser!.id),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.active:
            if (snapshot.hasData) {
              final draws = snapshot.data as Iterable<DrawStructure>;

              return CustomScrollView(
                slivers: [
                  customAppBarSliver(context.loc.myDrawsScreenTitle, context),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 30,
                    ),
                  ),
                  draws.isNotEmpty
                      ? SliverList.builder(
                          itemCount: draws.length,
                          itemBuilder: (context, index) {
                            DrawStructure draw = draws.elementAt(index);
                            return customListTile(context, _draw, draw, index);
                          },
                        )
                      : SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: titleText(context.loc.findAllDraws),
                          ),
                        ),
                  const SliverToBoxAdapter(
                    child: SizedBox(
                      height: 60,
                    ),
                  ),
                ],
              );
            } else {
              return const Center(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(),
                ),
              );
            }
          default:
            return const Center(
              child: SizedBox(
                height: 100,
                width: 100,
                child: CircularProgressIndicator(),
              ),
            );
        }
      },
    );
  }
}
