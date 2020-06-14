import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits/domain/habits/daily_habits.dart';
import 'package:habits/infrastructure/habits/habit_dtos.dart';

part 'daily_habits_dtos.g.dart';
part 'daily_habits_dtos.freezed.dart';

@freezed
abstract class DailyHabitsDto implements _$DailyHabitsDto {
  const DailyHabitsDto._();

  const factory DailyHabitsDto({
    @required String uniqueId,
    @required List<HabitItemDto> habits,
    @required DateTime dateTime,
  }) = _DailyHabitsDto;

  factory DailyHabitsDto.fromDomain(DailyHabits dailyHabits) {
    return DailyHabitsDto(
      uniqueId: dailyHabits.id.getOrCrash(),
      dateTime: dailyHabits.dateTime,
      habits: dailyHabits.habits
          .map(
            (habitItem) => HabitItemDto.fromDomain(habitItem),
          )
          .toList(),
    );
  }

  factory DailyHabitsDto.fromJson(Map<String, dynamic> json) =>
      _$DailyHabitsDtoFromJson(json);
}
