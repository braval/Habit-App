import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:habits/domain/habits/habit_failure.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:habits/domain/habits/daily_habits.dart';
import 'package:dartz/dartz.dart';
import 'package:habits/domain/habits/i_habits_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHabitsRepository)
class HabitsRepository implements IHabitsRepository {
  final Firestore _databaseReference;

  HabitsRepository(this._databaseReference);

  @override
  Future<Either<HabitFailure, Unit>> add(HabitItem habit) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<Either<HabitFailure, Unit>> delete(HabitItem habit) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<HabitFailure, Unit>> markDone(HabitItem habit) {
    // TODO: implement markDone
    throw UnimplementedError();
  }

  @override
  Future<Either<HabitFailure, Unit>> update(HabitItem habit) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<HabitFailure, List<DailyHabits>>> watchAll() {
    // TODO: implement watchAll
    throw UnimplementedError();
  }
}
