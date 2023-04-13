import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/services/auth/bloc/auth_event.dart';

import '../../services/auth/auth_service.dart';
import '../../services/auth/bloc/auth_bloc.dart';
import '../../services/auth/bloc/auth_state.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(AuthService()),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Center(
            child: Column(children: [
              const Text('Supprimer mon compte ?'),
              ElevatedButton(
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEventDeleteUser());
                  Navigator.of(context).pop();
                },
                child: const Text('Supprimer'),
              ),
              ElevatedButton(
                onPressed: () async {
                  context.read<AuthBloc>().add(const AuthEventLogOut());
                },
                child: const Text('Me déconnecter'),
              ),
            ]),
          );
        },
      ),
    );
  }
}
