import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/extensions/buildcontext/loc.dart';
import 'package:yiking/services/auth/auth_exceptions.dart';
import 'package:yiking/services/auth/bloc/auth_event.dart';
import 'package:yiking/utilities/dialogs/error_dialogs.dart';
import 'package:yiking/utilities/dialogs/password_reset_dialog.dart';
import 'package:yiking/views/widgets/app_button_widget.dart';
import 'package:yiking/views/widgets/custom_sliver_widget.dart';

import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';
import '../widgets/custom_text_widget.dart';

class RecoverView extends StatefulWidget {
  const RecoverView({super.key});

  @override
  State<RecoverView> createState() => _RecoverViewState();
}

class _RecoverViewState extends State<RecoverView> {
  late TextEditingController _emailField;

  @override
  void initState() {
    _emailField = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) async {
        if (state is AuthStateRecoverPassword) {
          if (state.exception is InvalidEmailAuthException) {
            await errorDialog(context, context.loc.emailIncorrect);
          } else if (state.exception is UserNotFoundAuthException) {
            await errorDialog(context, context.loc.noUser);
          } else if (state.exception is GenericAuthException) {
            await errorDialog(context, context.loc.genericError);
          } else if (state.hasSentEmail! == true) {
            await passwordResetDialog(context, context.loc.recoryEmailSent);
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              customAppBarSliver(context.loc.recoverScreenTitle, context),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      titleText(
                        context.loc.recoverScreenTitle,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          customTextField(context.loc.emailAddress, _emailField,
                              TextInputType.emailAddress, false),
                          const SizedBox(
                            height: 40,
                          ),
                          CustomButtonAnimated(
                            onTap: () {
                              context.read<AuthBloc>().add(
                                  AuthEventRecoverPassword(
                                      email: _emailField.text));
                            },
                            width: MediaQuery.sizeOf(context).width * 0.85,
                            height: MediaQuery.sizeOf(context).height / 8,
                            child: titleText(
                              context.loc.sendEmailButton,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      TextButton(
                          onPressed: () {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEventLogOut());
                          },
                          child: contentText(context.loc.backToLogin))
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
