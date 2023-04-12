import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/foundation.dart';

// create a singleton class to verify if the user is allowed to log in, checking
// if verified is email
@immutable
class AuthUser {
  // create an boolean attribute
  final bool isEmailVerified;
  final String email;
  final String id;
  // construct the class, giving a value to the attrbute
  const AuthUser({
    required this.id,
    required this.email,
    required this.isEmailVerified,
  });

  factory AuthUser.fromFirebase(User user) => AuthUser(
        id: user.uid,
        email: user.email!,
        isEmailVerified: user.emailVerified,
      );
}
