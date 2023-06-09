import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yijing/extensions/buildcontext/loc.dart';
import 'package:yijing/services/auth/auth_exceptions.dart';
import 'package:yijing/services/auth/bloc/auth_event.dart';
import 'package:yijing/utilities/dialogs/error_dialogs.dart';
import 'package:yijing/views/widgets/app_button_widget.dart';
import 'package:yijing/views/widgets/custom_sliver_widget.dart';

import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';
import '../widgets/custom_text_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late TextEditingController _emailField;
  late TextEditingController _passwordField;
  final Uri url = Uri.parse('https://jomoreschi.fr/yiking');
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
        if (state is AuthStateLoggedOut) {
          if (state.exception is UserNotFoundAuthException) {
            await errorDialog(context, context.loc.noUser);
          } else if (state.exception is WrongPassordAuthException) {
            await errorDialog(context, context.loc.wrongPassword);
          } else if (state.exception is GenericAuthException) {
            await errorDialog(context, context.loc.connectionError);
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
            body: CustomScrollView(
          slivers: [
            customAppBarSliver(context.loc.appTitle, context),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    titleText(context.loc.loginScreenTitle),
                    Column(children: [
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
                              .add(const AuthEventInitialize());

                          context
                              .read<AuthBloc>()
                              .add(AuthEventLogInWithEmail(email, password));
                        },
                        width: MediaQuery.sizeOf(context).width * 0.85,
                        height: MediaQuery.sizeOf(context).height / 12,
                        child: titleText(
                          context.loc.logInButton,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
                    CustomButtonAnimated(
                      onTap: () async {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEventInitialize());

                        context
                            .read<AuthBloc>()
                            .add(const AuthEventLogInWithGoogle());
                      },
                      width: MediaQuery.sizeOf(context).width * 0.85,
                      height: MediaQuery.sizeOf(context).height / 12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          titleText(
                            context.loc.googleLogIn,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: Image.asset(
                              'assets/img/logo/google_logo.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEventRegister());
                          },
                          child: contentText(context.loc.createAccount),
                        ),
                        TextButton(
                          onPressed: () {
                            context.read<AuthBloc>().add(
                                const AuthEventRecoverPassword(email: null));
                          },
                          child: contentText(context.loc.pwdForgotten),
                        ),
                        TextButton(
                          onPressed: _launchUrl,
                          child: contentText(context.loc.termsPrivacyLink),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
      },
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
