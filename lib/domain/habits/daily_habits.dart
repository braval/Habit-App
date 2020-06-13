import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:dartz/dartz.dart';

part 'daily_habits.freezed.dart';

@freezed
abstract class DailyHabits implements _$DailyHabits {
  const DailyHabits._();

  const factory DailyHabits({
    @required UniqueId id,
    @required List<HabitItem> habits,
    @required DateTime dateTime,
  }) = _DailyHabits;
}
