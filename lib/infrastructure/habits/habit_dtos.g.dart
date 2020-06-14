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
    count: json['count'] as int,
  );
}

Map<String, dynamic> _$_$_HabitItemDtoToJson(_$_HabitItemDto instance) =>
    <String, dynamic>{
      'uniqueId': instance.uniqueId,
      'name': instance.name,
      'category': instance.category,
      'done': instance.done,
      'count': instance.count,
    };
