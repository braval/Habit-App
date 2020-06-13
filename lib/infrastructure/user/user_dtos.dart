import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/user/user.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const UserDto._();

  const factory UserDto({
    @required String uniqueId,
    @required String firstName,
    @required String lastName,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      uniqueId: user.id.getOrCrash(),
      firstName: user.firstName.getOrCrash(),
      lastName: user.lastName.getOrCrash(),
    );
  }

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uniqueId),
      firstName: Name(firstName),
      lastName: Name(lastName),
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
