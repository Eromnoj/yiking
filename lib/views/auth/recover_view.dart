import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/services/auth/auth_exceptions.dart';
import 'package:yiking/services/auth/bloc/auth_event.dart';
import 'package:yiking/utilities/dialogs/error_dialogs.dart';
import 'package:yiking/utilities/dialogs/password_reset_dialog.dart';

import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';
import '../account/widgets/custom_text_widget.dart';

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
          } else if (state.hasSentEmail! == true) {
            await passwordResetDialog(context,
                'Un email avec les infos nécessaires vous a été envoyé');
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: titleText(
              'Récupérer mon compte',
              fontSize: 25,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                titleText(
                  'Créer un nouveau mot de passe',
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    customTextField('Votre email', _emailField,
                        TextInputType.emailAddress, false),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(
                            AuthEventRecoverPassword(email: _emailField.text));
                      },
                      child: titleText('Envoyer le mail de renouvellement'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                TextButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(const AuthEventLogOut());
                    },
                    child: contentText('Retour à l\'écran de connexion'))
              ],
            ),
          ),
        );
      },
    );
  }
}
