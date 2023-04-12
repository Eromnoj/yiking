import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/services/auth/auth_exceptions.dart';
import 'package:yiking/services/auth/bloc/auth_event.dart';
import 'package:yiking/utilities/dialogs/error_dialogs.dart';

import '../services/auth/bloc/auth_bloc.dart';
import '../services/auth/bloc/auth_state.dart';

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
            await errorDialog(context, 'Email invalide');
          } else if (state.exception is UserNotFoundAuthException) {
            await errorDialog(context, 'Utilisateur non trouvé');
          } else if (state.exception is GenericAuthException) {
            await errorDialog(context,
                'Une erreur est survenue, veuillez recommencer utérieurement');
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Recover email'),
          ),
          body: Column(children: [
            const Text('Recover Email :'),
            TextField(
              controller: _emailField,
              keyboardType: TextInputType.emailAddress,
            ),
            ElevatedButton(
              onPressed: () {
                context
                    .read<AuthBloc>()
                    .add(AuthEventRecoverPassword(email: _emailField.text));
              },
              child: const Text('Récupérer mon mot de passe'),
            ),
            TextButton(
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEventLogOut());
                },
                child: const Text('Retour à l\'écran de connexion'))
          ]),
        );
      },
    );
  }
}
