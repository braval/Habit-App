import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/user/user.dart';
import 'package:habits/domain/user/user_failure.dart';

abstract class IUserRepository {
  Future<Either<UserFailure, Unit>> addUser({
    @required User user,
  });
  Future<Either<UserFailure, User>> getCurrentUser(UniqueId uid);
}
