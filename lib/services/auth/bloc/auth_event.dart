import 'package:flutter/foundation.dart';

@immutable
abstract class AuthEvent {
  const AuthEvent();
}

class AuthEventInitialize extends AuthEvent {
  const AuthEventInitialize();
}

class AuthEventLogInWithEmail extends AuthEvent {
  final String email;
  final String password;
  const AuthEventLogInWithEmail(this.email, this.password);
}

class AuthEventLogInWithGoogle extends AuthEvent {
  const AuthEventLogInWithGoogle();
}

class AuthEventLogOut extends AuthEvent {
  const AuthEventLogOut();
}

class AuthEventRegister extends AuthEvent {
  const AuthEventRegister();
}

class AuthEventCreateAccount extends AuthEvent {
  final String email;
  final String password;

  const AuthEventCreateAccount(this.email, this.password);
}

class AuthEventRecoverPassword extends AuthEvent {
  final String? email;
  const AuthEventRecoverPassword({required this.email});
}

class AuthEventSendVerificationEmail extends AuthEvent {
  const AuthEventSendVerificationEmail();
}

class AuthEventDeleteUser extends AuthEvent {
  const AuthEventDeleteUser();
}
