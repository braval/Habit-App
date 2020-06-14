import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/user/i_user_repository.dart';
import 'package:habits/domain/user/user.dart';
import 'package:habits/domain/user/user_failure.dart';
import 'package:habits/infrastructure/user/user_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final Firestore _databaseReference;

  UserRepository(this._databaseReference);

  @override
  Future<Either<UserFailure, Unit>> addUser({User user}) async {
    try {
      final UserDto userDto = UserDto.fromDomain(user);

      await _databaseReference
          .collection("users")
          .document(user.id.getOrCrash())
          .setData(userDto.toJson());
      return right(unit);
    } on PlatformException catch (_) {
      return left(const UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, User>> getCurrentUser(UniqueId id) async {
    try {
      final userInfo = await _databaseReference
          .collection("users")
          .document(id.getOrCrash())
          .get();

      return right(UserDto.fromJson(userInfo.data).toDomain());
    } on PlatformException catch (_) {
      return left(const UserFailure.serverError());
    }
  }
}
