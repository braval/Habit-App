import 'package:firebase_auth/firebase_auth.dart';
import 'package:habits/domain/auth/auth_user.dart';
import 'package:habits/domain/core/value_objects.dart';

extension FirebaseUserDomainX on FirebaseUser {
  AuthUser toDomain() {
    return AuthUser(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
