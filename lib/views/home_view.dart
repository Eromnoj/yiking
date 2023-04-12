import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/services/auth/bloc/auth_event.dart';
import '../services/auth/bloc/auth_bloc.dart';
import '../services/auth/bloc/auth_state.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Mon Compte'),
          ),
          body: Column(
            children: [
              TextButton(
                  onPressed: () async {
                    context.read<AuthBloc>().add(const AuthEventLogOut());
                  },
                  child: const Text('Log Out'))
            ],
          ),
        );
      },
    );
  }
}
