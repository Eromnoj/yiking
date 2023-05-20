import 'package:flutter/material.dart';
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
import 'package:yiking/views/account/result_draw_view.dart';
import 'package:yiking/views/account/unique_draw_view.dart';
import 'package:yiking/views/auth/login_view.dart';
import 'package:yiking/views/auth/recover_view.dart';
import 'package:yiking/views/auth/register_view.dart';
import 'package:yiking/views/auth/verify_email_view.dart';
// import 'package:flex_color_scheme/flex_color_scheme.dart';
// import

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      // Made for FlexColorScheme version 7.0.5. Make sure you
// use same or higher package version, but still same major version.
// If you use a lower version, some properties may not be supported.
// In that case remove them after copying this theme to your app.
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 15, 13, 133),
          brightness: Brightness.dark,
          // surfaceTint: Colors.transparent,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.all(8),
          isCollapsed: true,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
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
        yikingDrawResultRoute: (context) => const ResultDrawView(),
      },
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => AuthBloc(AuthService()),
        child: const MyApp(),
      ),
    ),
  );
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

// FlexThemeData.light(
//         colors: const FlexSchemeColor(
//           primary: Color.fromARGB(255, 239, 247, 207),
//           primaryContainer: Color.fromARGB(255, 218, 228, 131),
//           secondary: Color.fromARGB(255, 28, 29, 30),
//           secondaryContainer: Color.fromARGB(255, 170, 113, 6),
//           tertiary: Color(0xff161032),
//           tertiaryContainer: Color(0xff5d5ddf),
//           error: Color(0xffb00020),
//         ),
//         scaffoldBackground: const Color.fromARGB(255, 112, 10, 18),
//         surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
//         blendLevel: 3,
//         appBarStyle: FlexAppBarStyle.scaffoldBackground,
//         bottomAppBarElevation: 5.5,
//         subThemesData: const FlexSubThemesData(
//           defaultRadius: 7.0,
//           elevatedButtonSchemeColor: SchemeColor.onPrimaryContainer,
//           elevatedButtonSecondarySchemeColor: SchemeColor.primary,
//           outlinedButtonOutlineSchemeColor: SchemeColor.primary,
//           toggleButtonsBorderSchemeColor: SchemeColor.primary,
//           segmentedButtonSchemeColor: SchemeColor.primary,
//           segmentedButtonBorderSchemeColor: SchemeColor.primary,
//           unselectedToggleIsColored: true,
//           sliderValueTinted: true,
//           inputDecoratorSchemeColor: SchemeColor.onTertiary,
//           inputDecoratorRadius: 7.0,
//           inputDecoratorUnfocusedBorderIsColored: false,
//           fabUseShape: true,
//           fabAlwaysCircular: true,
//           popupMenuRadius: 7.0,
//           popupMenuElevation: 3.0,
//           dialogRadius: 7.0,
//           dialogElevation: 5.0,
//           timePickerDialogRadius: 7.0,
//           appBarScrolledUnderElevation: 5,
//           drawerIndicatorRadius: 7.0,
//           drawerIndicatorSchemeColor: SchemeColor.primary,
//           menuRadius: 8.0,
//           menuElevation: 3.0,
//           menuBarRadius: 20.0,
//           menuBarElevation: 2.0,
//           menuBarShadowColor: Color(0x00000000),
//           navigationBarBackgroundSchemeColor: SchemeColor.secondary,
//           navigationBarSelectedLabelSchemeColor: SchemeColor.primary,
//           navigationBarSelectedIconSchemeColor: SchemeColor.onPrimary,
//           navigationBarUnselectedIconSchemeColor: SchemeColor.primary,
//           navigationBarUnselectedLabelSchemeColor: SchemeColor.primary,
//           navigationBarIndicatorSchemeColor: SchemeColor.primary,
//           navigationBarMutedUnselectedLabel: false,
//           navigationBarMutedUnselectedIcon: false,
//           navigationBarIndicatorOpacity: 1.00,
//           navigationBarIndicatorRadius: 27.0,
//         ),
//         keyColors: const FlexKeyColors(
//           useSecondary: true,
//           useTertiary: true,
//           keepPrimary: true,
//           keepSecondary: true,
//           keepTertiary: true,
//           keepPrimaryContainer: true,
//           keepSecondaryContainer: true,
//           keepTertiaryContainer: true,
//         ),
//         tones: FlexTones.soft(Brightness.light),
//         useMaterial3: true,
//         // To use the playground font, add GoogleFonts package and uncomment
//         fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
//       ),