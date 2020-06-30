import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:habits/domain/habits/value_objects.dart';

part 'habit_dtos.freezed.dart';
part 'habit_dtos.g.dart';

@freezed
abstract class HabitItemDto implements _$HabitItemDto {
  const HabitItemDto._();

  const factory HabitItemDto({
    @required String uniqueId,
    @required String name,
    @required String category,
    @required bool done,
    @required int currentCount,
    @required int totalCount,
    @required int longestStreak,
    @required int currentStreak,
  }) = _HabitItemDto;

  factory HabitItemDto.fromDomain(HabitItem habitItem) {
    return HabitItemDto(
      uniqueId: habitItem.id.getOrCrash(),
      name: habitItem.name.getOrCrash(),
      category: habitItem.category.getOrCrash(),
      currentCount: habitItem.currentCount,
      totalCount: habitItem.totalCount,
      done: habitItem.done,
      longestStreak: habitItem.longestStreak,
      currentStreak: habitItem.currentStreak,
    );
  }

  HabitItem toDomain() {
    return HabitItem(
      id: UniqueId.fromUniqueString(uniqueId),
      category: HabitCategoryName(category),
      done: done,
      currentCount: currentCount,
      totalCount: totalCount,
      name: HabitName(name),
      longestStreak: longestStreak,
      currentStreak: currentStreak,
    );
  }

  factory HabitItemDto.fromJson(Map<String, dynamic> json) =>
      _$HabitItemDtoFromJson(json);
}
