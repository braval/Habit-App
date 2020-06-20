import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits/domain/core/failures.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/habits/value_objects.dart';

part 'habit.freezed.dart';

@freezed
abstract class HabitItem implements _$HabitItem {
  const HabitItem._();

  const factory HabitItem({
    @required UniqueId id,
    @required HabitName name,
    @required HabitCategoryName category,
    @required bool done,
    @required int totalCount,
    @required int currentCount,
  }) = _HabitItem;

  factory HabitItem.empty() => HabitItem(
        id: UniqueId(),
        category: HabitCategoryName(''),
        name: HabitName(''),
        done: false,
        totalCount: 0,
        currentCount: 0,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.value
        .andThen(category.value)
        .fold((f) => some(f), (r) => none());
  }
}
