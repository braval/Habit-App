// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habit_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HabitItemDto _$_$_HabitItemDtoFromJson(Map<String, dynamic> json) {
  return _$_HabitItemDto(
    uniqueId: json['uniqueId'] as String,
    name: json['name'] as String,
    category: json['category'] as String,
    done: json['done'] as bool,
    currentCount: json['currentCount'] as int,
    totalCount: json['totalCount'] as int,
    longestStreak: json['longestStreak'] as int,
    currentStreak: json['currentStreak'] as int,
    weeklyStats: (json['weeklyStats'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k), e as bool),
    ),
  );
}

Map<String, dynamic> _$_$_HabitItemDtoToJson(_$_HabitItemDto instance) =>
    <String, dynamic>{
      'uniqueId': instance.uniqueId,
      'name': instance.name,
      'category': instance.category,
      'done': instance.done,
      'currentCount': instance.currentCount,
      'totalCount': instance.totalCount,
      'longestStreak': instance.longestStreak,
      'currentStreak': instance.currentStreak,
      'weeklyStats':
          instance.weeklyStats?.map((k, e) => MapEntry(k.toString(), e)),
    };
