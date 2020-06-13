import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/database/database_failure.dart';
import 'package:habits/domain/database/user.dart';

abstract class IDatabaseFacade {
  Future<Either<DatabaseFailure, Unit>> addUser({
    @required User user,
  });
  Future<Either<DatabaseFailure, User>> getCurrentUser(UniqueId uid);
}
