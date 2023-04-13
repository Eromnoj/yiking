import 'package:flutter/foundation.dart';

@immutable
abstract class AuthState {
  const AuthState();
}

class AuthStateLoggedIn extends AuthState {
  final String user;
  final String id;
  final bool isVerified;
  const AuthStateLoggedIn({
    required this.user,
    required this.id,
    required this.isVerified,
  });
}

class AuthStateLoggedOut extends AuthState {
  final Exception? exception;
  const AuthStateLoggedOut({this.exception});
}

class AuthStateRegistering extends AuthState {
  final Exception? exception;

  const AuthStateRegistering({this.exception});
}

class AuthStateCheckEmail extends AuthState {
  const AuthStateCheckEmail();
}

class AuthStateRecoverPassword extends AuthState {
  final Exception? exception;
  final bool? hasSentEmail;
  const AuthStateRecoverPassword({this.exception, this.hasSentEmail});
}
