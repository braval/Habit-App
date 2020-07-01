import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:habits/domain/habits/habit_failure.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:dartz/dartz.dart';
import 'package:habits/domain/habits/i_habits_repository.dart';
import 'package:habits/infrastructure/habits/habit_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:habits/infrastructure/core/firestore_helpers.dart';
import 'package:intl/intl.dart';

@LazySingleton(as: IHabitsRepository)
class HabitsRepository implements IHabitsRepository {
  final Firestore _firestore;
  HabitsRepository(this._firestore);

  @override
  Future<Either<HabitFailure, Unit>> add(HabitItem habitItem) async {
    try {
      final HabitItemDto habitItemDto = HabitItemDto.fromDomain(habitItem);
      final userDoc = await _firestore.userDocument();
      final dailyHabitCollection = userDoc.dailyHabitsCollection;

      final date = await _firestore.date();
      if (date == "null") {
        await userDoc.updateData(
            {"date": DateFormat("yyyy-MM-dd").format(DateTime.now())});
      }

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
    final dailyHabitCollection = userDoc.dailyHabitsCollection.orderBy("done");

    final today = DateFormat("yyyy-MM-dd").format(DateTime.now());
    final currentDate = await _firestore.date();

    if (currentDate != today) {
      dailyHabitCollection.getDocuments().then(
        (snapshot) {
          snapshot.documents.forEach(
            (doc) {
              final newCurrentStreak =
                  doc.data["done"] == true ? doc.data["currentStreak"] + 1 : 0;
              final newLongestStreak = (newCurrentStreak as int) >=
                      (doc.data["longestStreak"] as int)
                  ? newCurrentStreak
                  : doc.data["longestStreak"];
              doc.reference.updateData(
                {
                  "currentStreak": newCurrentStreak,
                  "longestStreak": newLongestStreak,
                  "currentCount": 0,
                  "done": false,
                },
              );
              doc.reference.setData(
                {
                  "weeklyStats": {
                    DateTime.parse(currentDate).weekday.toString():
                        doc.data["done"],
                  },
                },
                merge: true,
              );
            },
          );
        },
      );
      await userDoc.updateData({"date": today});
    }

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
