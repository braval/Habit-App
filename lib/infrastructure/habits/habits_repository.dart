import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:habits/domain/auth/i_auth_facade.dart';
import 'package:habits/domain/habits/habit_failure.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:dartz/dartz.dart';
import 'package:habits/domain/habits/i_habits_repository.dart';
import 'package:habits/infrastructure/habits/habit_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:habits/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IHabitsRepository)
class HabitsRepository implements IHabitsRepository {
  final Firestore _firestore;
  final IAuthFacade _authFacade;

  HabitsRepository(this._firestore, this._authFacade);

  @override
  Future<Either<HabitFailure, Unit>> add(HabitItem habitItem) async {
    try {
      final HabitItemDto habitItemDto = HabitItemDto.fromDomain(habitItem);
      final userDoc = await _firestore.userDocument();
      final dailyHabitCollection = userDoc.dailyHabitsCollection;

      final newHabitDocumentRef =
          dailyHabitCollection.document(habitItemDto.name);

      final habit = await newHabitDocumentRef.get();
      if (habit.exists) {
        return left(const HabitFailure.habitAlreadyExists());
      }
      await newHabitDocumentRef.setData(habitItemDto.toJson());
      return right(unit);
    } on PlatformException catch (_) {
      return left(const HabitFailure.unexpected());
    }
  }

  @override
  Future<Either<HabitFailure, Unit>> delete(HabitItem habitItem) async {
    try {
      final userDoc = await _firestore.userDocument();
      final dailyHabitCollection = userDoc.dailyHabitsCollection;

      final habitRef =
          dailyHabitCollection.document(habitItem.name.getOrCrash());

      await habitRef.delete();
      return right(unit);
    } on PlatformException catch (_) {
      return left(const HabitFailure.unexpected());
    }
  }

  @override
  Future<Either<HabitFailure, Unit>> update(HabitItem habitItem) async {
    try {
      final userDoc = await _firestore.userDocument();
      final dailyHabitCollection = userDoc.dailyHabitsCollection;
      final habitDocumentRef =
          dailyHabitCollection.document(habitItem.name.getOrCrash());

      await habitDocumentRef
          .updateData(HabitItemDto.fromDomain(habitItem).toJson());
      return right(unit);
    } on PlatformException catch (_) {
      return left(const HabitFailure.unexpected());
    }
  }

  @override
  Stream<Either<HabitFailure, List<HabitItem>>> watchAll(
      DateTime dateTime) async* {
    final userDoc = await _firestore.userDocument();
    final dailyHabitCollection = userDoc.dailyHabitsCollection;

    yield* dailyHabitCollection.snapshots().map(
      (snapshot) {
        if (snapshot.documents.isNotEmpty) {
          return right(
            snapshot.documents
                .map((doc) => HabitItemDto.fromJson(doc.data).toDomain())
                .toList(),
          );
        } else {
          return left(const HabitFailure.noHabitsFound());
        }
      },
    );
  }
}
