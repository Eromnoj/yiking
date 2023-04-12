import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/services/auth/auth_exceptions.dart';
import 'package:yiking/services/auth/bloc/auth_event.dart';
import 'package:yiking/utilities/dialogs/error_dialogs.dart';

import '../services/auth/bloc/auth_bloc.dart';
import '../services/auth/bloc/auth_state.dart';

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
            await errorDialog(context, 'Mot de passe trop faible');
          } else if (state.exception is EmailAlreadyInUseAuthException) {
            await errorDialog(context, 'Cet email est déjà utlisé');
          } else if (state.exception is InvalidEmailAuthException) {
            await errorDialog(context, 'L\'email entré n\'est pas correct');
          } else if (state.exception is GenericAuthException) {
            await errorDialog(
                context, 'Erreur lors la tentative de création du compte');
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Register'),
          ),
          body: Column(
            children: [
              const Text('Register page'),
              TextField(
                controller: _emailField,
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                controller: _passwordField,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                enableSuggestions: false,
              ),
              ElevatedButton(
                onPressed: () {
                  final email = _emailField.text;
                  final password = _passwordField.text;
                  context.read<AuthBloc>().add(AuthEventCreateAccount(
                        email,
                        password,
                      ));
                },
                child: const Text('Register'),
              ),
              TextButton(
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEventLogOut());
                },
                child: const Text('Back to Log in'),
              ),
            ],
          ),
        );
      },
    );
  }
}
