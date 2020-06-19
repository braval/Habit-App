import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:habits/domain/habits/habit_failure.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:dartz/dartz.dart';
import 'package:habits/domain/habits/i_habits_repository.dart';
import 'package:habits/domain/user/user.dart';
import 'package:habits/infrastructure/habits/habit_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@LazySingleton(as: IHabitsRepository)
class HabitsRepository implements IHabitsRepository {
  final Firestore _databaseReference;

  HabitsRepository(this._databaseReference);

  @override
  Future<Either<HabitFailure, Unit>> add(User user, HabitItem habitItem) async {
    try {
      final HabitItemDto habitItemDto = HabitItemDto.fromDomain(habitItem);

      final today = DateFormat("yyyy-MM-dd").format(DateTime.now());

      await _databaseReference
          .collection("users")
          .document(user.id.getOrCrash())
          .collection("dailyHabits")
          .document(today)
          .collection("habits")
          .document(habitItem.id.getOrCrash())
          .setData(habitItemDto.toJson());

      return right(unit);
    } on PlatformException catch (_) {
      return left(const HabitFailure.unexpected());
    }
  }

  @override
  Future<Either<HabitFailure, Unit>> delete(
      User user, HabitItem habitItem) async {
    try {
      final today = DateFormat("yyyy-MM-dd").format(DateTime.now());

      final habitRef = _databaseReference
          .collection("users")
          .document(user.id.getOrCrash())
          .collection("dailyHabits")
          .document(today)
          .collection("habits")
          .document(habitItem.id.getOrCrash());

      await habitRef.delete();
      return right(unit);
    } on PlatformException catch (_) {
      return left(const HabitFailure.unexpected());
    }
  }

  @override
  Future<Either<HabitFailure, Unit>> update(
      User user, HabitItem habitItem) async {
    try {
      final today = DateFormat("yyyy-MM-dd").format(DateTime.now());

      final habitRef = _databaseReference
          .collection("users")
          .document(user.id.getOrCrash())
          .collection("dailyHabits")
          .document(today)
          .collection("habits")
          .document(habitItem.id.getOrCrash());

      await habitRef.updateData(HabitItemDto.fromDomain(habitItem).toJson());
      return right(unit);
    } on PlatformException catch (_) {
      return left(const HabitFailure.unexpected());
    }
  }

  @override
  Stream<Either<HabitFailure, List<HabitItem>>> watchAll(User user) {
    final today = DateFormat("yyyy-MM-dd").format(DateTime.now());
    final habitsCollection = _databaseReference
        .collection("users")
        .document(user.id.getOrCrash())
        .collection("dailyHabits")
        .document(today)
        .collection("habits")
        .orderBy('done');

    return habitsCollection.snapshots().map(
      (snapshot) {
        if (snapshot.documents.isNotEmpty) {
          return right(
            snapshot.documents
                .map((doc) => HabitItemDto.fromJson(doc.data).toDomain())
                .toList(),
          );
        } else {
          return left(const HabitFailure.unexpected());
        }
      },
    );
  }
}
