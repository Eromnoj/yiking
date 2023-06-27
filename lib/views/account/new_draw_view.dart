import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yijing/extensions/buildcontext/loc.dart';
import 'package:yijing/routes/constants_routes.dart';
import 'package:yijing/views/widgets/app_button_widget.dart';
import 'package:yijing/views/widgets/custom_sliver_widget.dart';
import 'package:yijing/views/widgets/custom_text_widget.dart';
import '../../services/auth/auth_service.dart';
import '../../services/auth/auth_user.dart';
import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';
import '../../services/firebase/draw/draw_storage.dart';

class NewDrawView extends StatefulWidget {
  const NewDrawView({super.key});

  @override
  State<NewDrawView> createState() => _NewDrawViewState();
}

class _NewDrawViewState extends State<NewDrawView> {
  late final DrawStorage drawStorage;
  late final AuthUser? currentUser;

  @override
  void initState() {
    drawStorage = DrawStorage();
    currentUser = AuthService().currentUser;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return CustomScrollView(
          slivers: [
            customAppBarSliver(context.loc.yiJingDrawScreenTitle, context),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    CustomButtonAnimated(
                      onTap: () {
                        Navigator.of(context).pushNamed(makeAYiKingDrawRoute);
                      },
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.height / 8,
                      child: titleText(
                        context.loc.drawWithAppButton,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    CustomButtonAnimated(
                      onTap: () {
                        Navigator.of(context).pushNamed(insertAYiKingDrawRoute);
                      },
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.height / 8,
                      child: titleText(
                        context.loc.insertDrawButton,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
