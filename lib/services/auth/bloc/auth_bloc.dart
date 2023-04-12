import 'package:bloc/bloc.dart';
import 'package:yiking/services/auth/auth_service.dart';
import 'package:yiking/services/auth/bloc/auth_event.dart';
import 'package:yiking/services/auth/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(AuthService provider)
      : super(const AuthStateLoggedOut(exception: null)) {
    on<AuthEventInitialize>(
      (event, emit) async {
        await provider.initialize();
      },
    );
    on<AuthEventLogInWithEmail>(
      (event, emit) async {
        final email = event.email;
        final password = event.password;

        try {
          final userResponse = await provider.signInWithEmail(
            email: email,
            password: password,
          );
          final user = userResponse.email;
          final id = userResponse.id;
          final isVerified = userResponse.isEmailVerified;
          emit(AuthStateLoggedIn(user: user, id: id, isVerified: isVerified));
        } on Exception catch (e) {
          emit(AuthStateLoggedOut(exception: e));
        }
      },
    );
    on<AuthEventLogInWithGoogle>(
      (event, emit) async {
        try {
          final userResponse = await provider.signInWithGoogle();
          final user = userResponse.email;
          final id = userResponse.id;
          final isVerified = userResponse.isEmailVerified;
          emit(AuthStateLoggedIn(user: user, id: id, isVerified: isVerified));
        } on Exception catch (e) {
          emit(AuthStateLoggedOut(exception: e));
        }
      },
    );

    on<AuthEventLogOut>(
      (event, emit) async {
        try {
          await provider.signOut();
          emit(const AuthStateLoggedOut(exception: null));
        } on Exception catch (e) {
          emit(AuthStateLoggedOut(exception: e));
        }
      },
    );

    on<AuthEventRegister>(
      (event, emit) {
        emit(const AuthStateRegistering(exception: null));
      },
    );

    on<AuthEventCreateAccount>(
      (event, emit) async {
        try {
          final email = event.email;
          final password = event.password;

          final userResponse = await provider.createUser(
            email: email,
            password: password,
          );
          await provider.sendEmailVerification();
          final user = userResponse.email;
          final id = userResponse.id;
          final isVerified = userResponse.isEmailVerified;
          emit(AuthStateLoggedIn(user: user, id: id, isVerified: isVerified));
        } on Exception catch (e) {
          emit(AuthStateRegistering(exception: e));
        }
      },
    );

    on<AuthEventSendVerificationEmail>(
      (event, emit) async {
        await provider.sendEmailVerification();
        emit(state);
      },
    );

    on<AuthEventRecoverPassword>(
      (event, emit) async {
        final email = event.email;

        if (email == null) {
          emit(const AuthStateRecoverPassword(exception: null));
        } else {
          try {
            await provider.sendPasword(toEmail: email);
            emit(const AuthStateLoggedOut(exception: null));
          } on Exception catch (e) {
            emit(AuthStateRecoverPassword(exception: e));
          }
        }
      },
    );
  }
}
