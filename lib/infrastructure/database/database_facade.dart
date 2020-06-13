import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/database/database_failure.dart';
import 'package:habits/domain/database/i_database_facade.dart';
import 'package:habits/domain/database/user.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

@LazySingleton(as: IDatabaseFacade)
class DatabaseFacade implements IDatabaseFacade {
  final Firestore _databaseReference;

  DatabaseFacade(this._databaseReference);

  @override
  Future<Either<DatabaseFailure, Unit>> addUser({User user}) async {
    try {
      await _databaseReference
          .collection("users")
          .document(user.id.getOrCrash())
          .setData({
        'first_name': user.firstName.getOrCrash(),
        'last_name': user.lastName.getOrCrash(),
      });
      return right(unit);
    } on PlatformException catch (_) {
      return left(const DatabaseFailure.serverError());
    }
  }

  @override
  Future<Either<DatabaseFailure, User>> getCurrentUser(UniqueId id) async {
    try {
      final userInfo = await _databaseReference
          .collection("users")
          .document(id.getOrCrash())
          .get();

      return right(
        User.fromDocument(id, userInfo),
      );
    } on PlatformException catch (_) {
      return left(const DatabaseFailure.serverError());
    }
  }
}
