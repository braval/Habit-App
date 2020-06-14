// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_habits_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DailyHabitsDto _$_$_DailyHabitsDtoFromJson(Map<String, dynamic> json) {
  return _$_DailyHabitsDto(
    uniqueId: json['uniqueId'] as String,
    habits: (json['habits'] as List)
        ?.map((e) =>
            e == null ? null : HabitItemDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dateTime: json['dateTime'] == null
        ? null
        : DateTime.parse(json['dateTime'] as String),
  );
}

Map<String, dynamic> _$_$_DailyHabitsDtoToJson(_$_DailyHabitsDto instance) =>
    <String, dynamic>{
      'uniqueId': instance.uniqueId,
      'habits': instance.habits,
      'dateTime': instance.dateTime?.toIso8601String(),
    };
