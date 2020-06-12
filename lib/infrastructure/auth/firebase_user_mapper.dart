import 'package:firebase_auth/firebase_auth.dart';
import 'package:habits/domain/auth/user.dart';
import 'package:habits/domain/core/value_objects.dart';

extension FirebaseUserDomainX on FirebaseUser {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
      firstName: null,
      lastName: null,
    );
  }
}
