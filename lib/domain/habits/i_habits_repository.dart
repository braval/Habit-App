import 'package:dartz/dartz.dart';
import 'package:habits/domain/habits/daily_habits.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:habits/domain/habits/habit_failure.dart';
import 'package:habits/domain/user/user.dart';

abstract class IHabitsRepository {
  Stream<Either<HabitFailure, List<DailyHabits>>> watchAll(
      User user, DateTime dateTime);
  Future<Either<HabitFailure, Unit>> add(User user, HabitItem habit);
  Future<Either<HabitFailure, Unit>> markDone(User user, HabitItem habit);
  Future<Either<HabitFailure, Unit>> update(User user, HabitItem habit);
  Future<Either<HabitFailure, Unit>> delete(User user, HabitItem habit);
}
