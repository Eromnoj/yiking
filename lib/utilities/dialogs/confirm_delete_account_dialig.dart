import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yijing/extensions/buildcontext/loc.dart';
import 'package:yijing/routes/constants_routes.dart';
import 'package:yijing/services/auth/auth_service.dart';
import 'package:yijing/services/auth/bloc/auth_bloc.dart';
import 'package:yijing/services/auth/bloc/auth_event.dart';
import 'package:yijing/services/auth/bloc/auth_state.dart';

import '../../views/widgets/custom_text_widget.dart';

Future<void> deleteAccountDialog(
  BuildContext context,
) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return BlocProvider(
        create: (context) => AuthBloc(AuthService()),
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return SimpleDialog(
              title: titleText(
                context.loc.confirmAccountDelete,
              ),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: contentText(context.loc.cancelButton,
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        context
                            .read<AuthBloc>()
                            .add(const AuthEventDeleteUser());
                        if (state is AuthStateLoggedOut) {
                          Navigator.of(context).popAndPushNamed(loginRoute);
                        }
                      },
                      child: contentText(context.loc.confirmButton),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      );
    },
  );
}
