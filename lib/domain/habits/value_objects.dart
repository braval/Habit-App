import 'package:dartz/dartz.dart';
import 'package:habits/domain/core/failures.dart';
import 'package:habits/domain/core/value_validators.dart';
import '../core/value_objects.dart';

class HabitName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 35;

  factory HabitName(String input) {
    assert(input != null);
    return HabitName._(
      validateHabitName(input, maxLength),
    );
  }

  const HabitName._(this.value);
}

class HabitCategoryName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const List<String> predefinedCategories = [
    "Sport",
    "Health",
    "Social",
    "Fitness",
    "Mindfulness",
    "Night Time Routine",
    "Chores",
    "Other",
    "Reading",
  ];

  factory HabitCategoryName(String input) {
    assert(input != null);
    return HabitCategoryName._(
      right(input),
    );
  }

  const HabitCategoryName._(this.value);
}
