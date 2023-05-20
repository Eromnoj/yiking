import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/services/auth/auth_exceptions.dart';
import 'package:yiking/services/auth/bloc/auth_event.dart';
import 'package:yiking/utilities/dialogs/error_dialogs.dart';

import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';
import '../account/widgets/custom_text_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
        if (state is AuthStateLoggedOut) {
          if (state.exception is UserNotFoundAuthException) {
            await errorDialog(context, 'Aucun utilisateur trouvé');
          } else if (state.exception is WrongPassordAuthException) {
            await errorDialog(context, 'Mauvais mot de passe');
          } else if (state.exception is GenericAuthException) {
            await errorDialog(context, 'Erreur lors la tentative de connexion');
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: titleText(
              'Mon Carnet Yiking',
              fontSize: 35,
            ),
          ),
          body: LayoutBuilder(
            builder: (context, constraint) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        titleText('Me connecter'),
                        Column(children: [
                          customTextField(
                            "Votre adresse email",
                            _emailField,
                            TextInputType.emailAddress,
                            false,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          customTextField(
                            "Mot de passe",
                            _passwordField,
                            TextInputType.visiblePassword,
                            true,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              final email = _emailField.text;
                              final password = _passwordField.text;
                              context
                                  .read<AuthBloc>()
                                  .add(const AuthEventInitialize());

                              context.read<AuthBloc>().add(
                                  AuthEventLogInWithEmail(email, password));
                            },
                            child: titleText('Connexion'),
                          ),
                        ]),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            context
                                .read<AuthBloc>()
                                .add(const AuthEventInitialize());

                            context
                                .read<AuthBloc>()
                                .add(const AuthEventLogInWithGoogle());
                          },
                          child: titleText('Me connecter avec Google'),
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
                              child: contentText('Créer un carnet'),
                            ),
                            TextButton(
                              onPressed: () {
                                context.read<AuthBloc>().add(
                                    const AuthEventRecoverPassword(
                                        email: null));
                              },
                              child: contentText('Mot de passe oublié ?'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
