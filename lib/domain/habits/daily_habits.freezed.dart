// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'daily_habits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DailyHabitsTearOff {
  const _$DailyHabitsTearOff();

  _DailyHabits call(
      {@required UniqueId id,
      @required List<HabitItem> habits,
      @required DateTime dateTime}) {
    return _DailyHabits(
      id: id,
      habits: habits,
      dateTime: dateTime,
    );
  }
}

// ignore: unused_element
const $DailyHabits = _$DailyHabitsTearOff();

mixin _$DailyHabits {
  UniqueId get id;
  List<HabitItem> get habits;
  DateTime get dateTime;

  $DailyHabitsCopyWith<DailyHabits> get copyWith;
}

abstract class $DailyHabitsCopyWith<$Res> {
  factory $DailyHabitsCopyWith(
          DailyHabits value, $Res Function(DailyHabits) then) =
      _$DailyHabitsCopyWithImpl<$Res>;
  $Res call({UniqueId id, List<HabitItem> habits, DateTime dateTime});
}

class _$DailyHabitsCopyWithImpl<$Res> implements $DailyHabitsCopyWith<$Res> {
  _$DailyHabitsCopyWithImpl(this._value, this._then);

  final DailyHabits _value;
  // ignore: unused_field
  final $Res Function(DailyHabits) _then;

  @override
  $Res call({
    Object id = freezed,
    Object habits = freezed,
    Object dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      habits: habits == freezed ? _value.habits : habits as List<HabitItem>,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
    ));
  }
}

abstract class _$DailyHabitsCopyWith<$Res>
    implements $DailyHabitsCopyWith<$Res> {
  factory _$DailyHabitsCopyWith(
          _DailyHabits value, $Res Function(_DailyHabits) then) =
      __$DailyHabitsCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, List<HabitItem> habits, DateTime dateTime});
}

class __$DailyHabitsCopyWithImpl<$Res> extends _$DailyHabitsCopyWithImpl<$Res>
    implements _$DailyHabitsCopyWith<$Res> {
  __$DailyHabitsCopyWithImpl(
      _DailyHabits _value, $Res Function(_DailyHabits) _then)
      : super(_value, (v) => _then(v as _DailyHabits));

  @override
  _DailyHabits get _value => super._value as _DailyHabits;

  @override
  $Res call({
    Object id = freezed,
    Object habits = freezed,
    Object dateTime = freezed,
  }) {
    return _then(_DailyHabits(
      id: id == freezed ? _value.id : id as UniqueId,
      habits: habits == freezed ? _value.habits : habits as List<HabitItem>,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
    ));
  }
}

class _$_DailyHabits extends _DailyHabits with DiagnosticableTreeMixin {
  const _$_DailyHabits(
      {@required this.id, @required this.habits, @required this.dateTime})
      : assert(id != null),
        assert(habits != null),
        assert(dateTime != null),
        super._();

  @override
  final UniqueId id;
  @override
  final List<HabitItem> habits;
  @override
  final DateTime dateTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyHabits(id: $id, habits: $habits, dateTime: $dateTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DailyHabits'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('habits', habits))
      ..add(DiagnosticsProperty('dateTime', dateTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DailyHabits &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.habits, habits) ||
                const DeepCollectionEquality().equals(other.habits, habits)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(habits) ^
      const DeepCollectionEquality().hash(dateTime);

  @override
  _$DailyHabitsCopyWith<_DailyHabits> get copyWith =>
      __$DailyHabitsCopyWithImpl<_DailyHabits>(this, _$identity);
}

abstract class _DailyHabits extends DailyHabits {
  const _DailyHabits._() : super._();
  const factory _DailyHabits(
      {@required UniqueId id,
      @required List<HabitItem> habits,
      @required DateTime dateTime}) = _$_DailyHabits;

  @override
  UniqueId get id;
  @override
  List<HabitItem> get habits;
  @override
  DateTime get dateTime;
  @override
  _$DailyHabitsCopyWith<_DailyHabits> get copyWith;
}
