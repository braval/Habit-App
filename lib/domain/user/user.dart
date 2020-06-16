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
}
