import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/services/auth/auth_exceptions.dart';
import 'package:yiking/services/auth/bloc/auth_event.dart';
import 'package:yiking/utilities/dialogs/error_dialogs.dart';

import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';

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
            title: const Text('Login'),
          ),
          body: Column(
            children: [
              const Text('Login page'),
              TextField(
                controller: _emailField,
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                controller: _passwordField,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () {
                  final email = _emailField.text;
                  final password = _passwordField.text;
                  context
                      .read<AuthBloc>()
                      .add(AuthEventLogInWithEmail(email, password));
                },
                child: const Text('Login'),
              ),
              ElevatedButton(
                onPressed: () async {
                  context
                      .read<AuthBloc>()
                      .add(const AuthEventLogInWithGoogle());
                },
                child: const Text('Login with Google'),
              ),
              TextButton(
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEventRegister());
                },
                child: const Text('Register'),
              ),
              TextButton(
                onPressed: () {
                  context
                      .read<AuthBloc>()
                      .add(const AuthEventRecoverPassword(email: null));
                },
                child: const Text('Retrouver mon mon de passe'),
              ),
            ],
          ),
        );
      },
    );
  }
}
