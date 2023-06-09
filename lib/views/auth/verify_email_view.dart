import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yijing/extensions/buildcontext/loc.dart';
import 'package:yijing/services/auth/bloc/auth_event.dart';
import 'package:yijing/views/widgets/custom_sliver_widget.dart';

import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';
import '../widgets/custom_text_widget.dart';

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              customAppBarSliver(context.loc.checkEmailScreenTitle, context),
              SliverToBoxAdapter(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      contentText(context.loc.accountConfirm),
                      const SizedBox(
                        height: 50,
                      ),
                      TextButton(
                        onPressed: () {
                          context.read<AuthBloc>().add(const AuthEventLogOut());
                        },
                        child: contentText(context.loc.backToLogin),
                      ),
                      TextButton(
                        onPressed: () {
                          context
                              .read<AuthBloc>()
                              .add(const AuthEventSendVerificationEmail());
                        },
                        child: contentText(context.loc.resentEmail),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
