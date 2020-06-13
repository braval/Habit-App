import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits/domain/core/failures.dart';
import 'package:habits/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User implements _$User {
  const User._();

  const factory User({
    @required UniqueId id,
    @required Name firstName,
    @required Name lastName,
  }) = _User;

  factory User.empty() => User(
        id: UniqueId(),
        firstName: Name(''),
        lastName: Name(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return firstName.value
        .andThen(lastName.value)
        .fold((f) => some(f), (r) => none());
  }

  // factory User.fromDocument(UniqueId id, DocumentSnapshot document) {
  //   if (document == null || document.data == null) return null;
  //   return User(
  //     id: id,
  //     firstName: Name(document.data['first_name'].toString()),
  //     lastName: Name(document.data['last_name'].toString()),
  //   );
  // }
}
