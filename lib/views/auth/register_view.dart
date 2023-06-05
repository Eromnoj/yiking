import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/extensions/buildcontext/loc.dart';
import 'package:yiking/services/auth/auth_exceptions.dart';
import 'package:yiking/services/auth/bloc/auth_event.dart';
import 'package:yiking/utilities/dialogs/error_dialogs.dart';
import 'package:yiking/views/widgets/app_button_widget.dart';
import 'package:yiking/views/widgets/custom_sliver_widget.dart';
import 'package:yiking/views/widgets/custom_text_widget.dart';

import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late TextEditingController _emailField;
  late TextEditingController _passwordField;

  @override
  void initState() {
    _emailField = TextEditingController();
    _passwordField = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailField.dispose();
    _passwordField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) async {
        if (state is AuthStateRegistering) {
          if (state.exception is WeakPasswordAuthException) {
            await errorDialog(context, context.loc.weakPassword);
          } else if (state.exception is EmailAlreadyInUseAuthException) {
            await errorDialog(context, context.loc.emailAlreadyinUse);
          } else if (state.exception is InvalidEmailAuthException) {
            await errorDialog(context, context.loc.emailIncorrect);
          } else if (state.exception is GenericAuthException) {
            await errorDialog(context, context.loc.createError);
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              customAppBarSliver(context.loc.registerScreenTitle, context),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      titleText(context.loc.registerScreenTitle),
                      Column(
                        children: [
                          customTextField(
                            context.loc.emailAddress,
                            _emailField,
                            TextInputType.emailAddress,
                            false,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          customTextField(
                            context.loc.password,
                            _passwordField,
                            TextInputType.visiblePassword,
                            true,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomButtonAnimated(
                            onTap: () {
                              final email = _emailField.text;
                              final password = _passwordField.text;
                              context
                                  .read<AuthBloc>()
                                  .add(AuthEventCreateAccount(
                                    email,
                                    password,
                                  ));
                            },
                            width: MediaQuery.sizeOf(context).width * 0.85,
                            height: MediaQuery.sizeOf(context).height / 12,
                            child: titleText(
                              context.loc.registerButton,
                              fontWeight: FontWeight.bold,
                              shadow: [
                                const Shadow(
                                  color: Colors.white,
                                  blurRadius: 7,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 120,
                      ),
                      TextButton(
                        onPressed: () {
                          context.read<AuthBloc>().add(const AuthEventLogOut());
                        },
                        child: contentText(
                          context.loc.backToLogin,
                        ),
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
