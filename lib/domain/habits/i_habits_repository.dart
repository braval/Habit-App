import 'package:dartz/dartz.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:habits/domain/habits/habit_failure.dart';

abstract class IHabitsRepository {
  Stream<Either<HabitFailure, List<HabitItem>>> watchAll(DateTime dateTime);
  Future<Either<HabitFailure, Unit>> add(HabitItem habit);
  Future<Either<HabitFailure, Unit>> update(HabitItem habit);
  Future<Either<HabitFailure, Unit>> delete(HabitItem habit);
}
