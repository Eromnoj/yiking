import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yiking/routes/constants_routes.dart';
import 'package:yiking/services/auth/auth_service.dart';
import 'package:yiking/services/auth/bloc/auth_bloc.dart';
import 'package:yiking/services/auth/bloc/auth_event.dart';
import 'package:yiking/services/auth/bloc/auth_state.dart';
import 'package:yiking/views/account/app_draw_view.dart';
import 'package:yiking/views/account/home_view.dart';
import 'package:yiking/views/account/insert_draw_view.dart';
import 'package:yiking/views/account/unique_draw_view.dart';
import 'package:yiking/views/account/unique_yiking_view.dart';
import 'package:yiking/views/auth/login_view.dart';
import 'package:yiking/views/auth/recover_view.dart';
import 'package:yiking/views/auth/register_view.dart';
import 'package:yiking/views/auth/verify_email_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(
            MaterialApp(
              title: 'Mon Carnet Yiking',
              theme: ThemeData(
                useMaterial3: true,
                fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                colorScheme: ColorScheme.fromSeed(
                  seedColor: const Color.fromARGB(255, 196, 74, 18),
                  brightness: Brightness.light,
                ),
                inputDecorationTheme: const InputDecorationTheme(
                  contentPadding: EdgeInsets.all(8),
                  isCollapsed: true,
                ),
                elevatedButtonTheme: const ElevatedButtonThemeData(
                  style: ButtonStyle(
                    elevation: MaterialStatePropertyAll(1.0),
                  ),
                ),
              ),
              routes: {
                uniqueDrawRoute: (context) => const UniqueDrawView(),
                makeAYiKingDrawRoute: (context) => const AppDrawView(),
                insertAYiKingDrawRoute: (context) => const InsertDrawView(),
                userAccountRoute: (context) => const HomeView(),
                uniqueYikingRoute: (context) => const UniqueYikingView(),
              },
              debugShowCheckedModeBanner: false,
              home: BlocProvider(
                create: (context) => AuthBloc(AuthService()),
                child: const MyApp(),
              ),
            ),
          ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().add(const AuthEventInitialize());
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthStateLoggedIn) {
          if (state.isVerified == true) {
            return const HomeView();
          } else {
            return const VerifyEmailView();
          }
        } else if (state is AuthStateLoggedOut) {
          return const LoginView();
        } else if (state is AuthEventDeleteUser) {
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
    );
  }
}
