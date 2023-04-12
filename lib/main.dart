import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yiking/services/auth/auth_service.dart';
import 'package:yiking/services/auth/bloc/auth_bloc.dart';
import 'package:yiking/services/auth/bloc/auth_event.dart';
import 'package:yiking/services/auth/bloc/auth_state.dart';
import 'package:yiking/views/home_view.dart';
import 'package:yiking/views/login_view.dart';
import 'package:yiking/views/recover_view.dart';
import 'package:yiking/views/register_view.dart';
import 'package:yiking/views/verify_email_view.dart';

// import

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(AuthService()),
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              context.read<AuthBloc>().add(const AuthEventInitialize());
              if (state is AuthStateLoggedIn) {
                if (state.isVerified == true) {
                  return const HomeView();
                } else {
                  return const VerifyEmailView();
                }
              } else if (state is AuthStateLoggedOut) {
                return const LoginView();
              } else if (state is AuthStateRegistering) {
                return const RegisterView();
              } else if (state is AuthStateRecoverPassword) {
                return const RecoverView();
              } else {
                return const Scaffold(
                  body: CircularProgressIndicator(),
                );
              }
            },
          )),
    );
  }
}