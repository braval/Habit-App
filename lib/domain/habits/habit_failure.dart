import 'package:freezed_annotation/freezed_annotation.dart';

part 'habit_failure.freezed.dart';

@freezed
abstract class HabitFailure with _$HabitFailure {
  const factory HabitFailure.unexpected() = _Unexpected;
  const factory HabitFailure.noHabitsFound() = _NoHabitsFound;
  const factory HabitFailure.noCategorySelected() = _NoCategorySelected;
}
