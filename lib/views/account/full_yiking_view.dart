import 'package:flutter/material.dart';
import 'package:yiking/extensions/buildcontext/loc.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_storage.dart';
import 'package:yiking/services/firebase/yiking_data_fr/yiking_structure.dart';
import 'package:yiking/views/widgets/custom_sliver_widget.dart';
import 'package:yiking/views/widgets/yiking_list_tile.dart';

class FullYikingView extends StatefulWidget {
  const FullYikingView({super.key});

  @override
  State<FullYikingView> createState() => _FullYikingViewState();
}

class _FullYikingViewState extends State<FullYikingView> {
  // late final YikingStorage _yiking;
  // late Locale myLocal;

  // @override
  // void initState() {
  //   myLocal = Localizations.localeOf(context);
  //   print(myLocal);
  //   _yiking = YikingStorage(myLocal);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: YikingStorage(Localizations.localeOf(context)).allYikings(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.active:
            final yikingEntry = snapshot.data as Iterable<YikingStructure>;
            return CustomScrollView(
              slivers: [
                customAppBarSliver(context.loc.allHexagrams, context),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                SliverList.builder(
                  itemCount: yikingEntry.length,
                  itemBuilder: (context, index) {
                    YikingStructure uniqueYikingEntry =
                        yikingEntry.elementAt(index);
                    return yikingListTile(context, uniqueYikingEntry, index);
                  },
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 60,
                  ),
                ),
              ],
            );
          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}
