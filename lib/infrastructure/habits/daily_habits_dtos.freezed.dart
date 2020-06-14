// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'daily_habits_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DailyHabitsDto _$DailyHabitsDtoFromJson(Map<String, dynamic> json) {
  return _DailyHabitsDto.fromJson(json);
}

class _$DailyHabitsDtoTearOff {
  const _$DailyHabitsDtoTearOff();

  _DailyHabitsDto call(
      {@required String uniqueId,
      @required List<HabitItemDto> habits,
      @required DateTime dateTime}) {
    return _DailyHabitsDto(
      uniqueId: uniqueId,
      habits: habits,
      dateTime: dateTime,
    );
  }
}

// ignore: unused_element
const $DailyHabitsDto = _$DailyHabitsDtoTearOff();

mixin _$DailyHabitsDto {
  String get uniqueId;
  List<HabitItemDto> get habits;
  DateTime get dateTime;

  Map<String, dynamic> toJson();
  $DailyHabitsDtoCopyWith<DailyHabitsDto> get copyWith;
}

abstract class $DailyHabitsDtoCopyWith<$Res> {
  factory $DailyHabitsDtoCopyWith(
          DailyHabitsDto value, $Res Function(DailyHabitsDto) then) =
      _$DailyHabitsDtoCopyWithImpl<$Res>;
  $Res call({String uniqueId, List<HabitItemDto> habits, DateTime dateTime});
}

class _$DailyHabitsDtoCopyWithImpl<$Res>
    implements $DailyHabitsDtoCopyWith<$Res> {
  _$DailyHabitsDtoCopyWithImpl(this._value, this._then);

  final DailyHabitsDto _value;
  // ignore: unused_field
  final $Res Function(DailyHabitsDto) _then;

  @override
  $Res call({
    Object uniqueId = freezed,
    Object habits = freezed,
    Object dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      uniqueId: uniqueId == freezed ? _value.uniqueId : uniqueId as String,
      habits: habits == freezed ? _value.habits : habits as List<HabitItemDto>,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
    ));
  }
}

abstract class _$DailyHabitsDtoCopyWith<$Res>
    implements $DailyHabitsDtoCopyWith<$Res> {
  factory _$DailyHabitsDtoCopyWith(
          _DailyHabitsDto value, $Res Function(_DailyHabitsDto) then) =
      __$DailyHabitsDtoCopyWithImpl<$Res>;
  @override
  $Res call({String uniqueId, List<HabitItemDto> habits, DateTime dateTime});
}

class __$DailyHabitsDtoCopyWithImpl<$Res>
    extends _$DailyHabitsDtoCopyWithImpl<$Res>
    implements _$DailyHabitsDtoCopyWith<$Res> {
  __$DailyHabitsDtoCopyWithImpl(
      _DailyHabitsDto _value, $Res Function(_DailyHabitsDto) _then)
      : super(_value, (v) => _then(v as _DailyHabitsDto));

  @override
  _DailyHabitsDto get _value => super._value as _DailyHabitsDto;

  @override
  $Res call({
    Object uniqueId = freezed,
    Object habits = freezed,
    Object dateTime = freezed,
  }) {
    return _then(_DailyHabitsDto(
      uniqueId: uniqueId == freezed ? _value.uniqueId : uniqueId as String,
      habits: habits == freezed ? _value.habits : habits as List<HabitItemDto>,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
    ));
  }
}

@JsonSerializable()
class _$_DailyHabitsDto extends _DailyHabitsDto {
  const _$_DailyHabitsDto(
      {@required this.uniqueId, @required this.habits, @required this.dateTime})
      : assert(uniqueId != null),
        assert(habits != null),
        assert(dateTime != null),
        super._();

  factory _$_DailyHabitsDto.fromJson(Map<String, dynamic> json) =>
      _$_$_DailyHabitsDtoFromJson(json);

  @override
  final String uniqueId;
  @override
  final List<HabitItemDto> habits;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'DailyHabitsDto(uniqueId: $uniqueId, habits: $habits, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DailyHabitsDto &&
            (identical(other.uniqueId, uniqueId) ||
                const DeepCollectionEquality()
                    .equals(other.uniqueId, uniqueId)) &&
            (identical(other.habits, habits) ||
                const DeepCollectionEquality().equals(other.habits, habits)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uniqueId) ^
      const DeepCollectionEquality().hash(habits) ^
      const DeepCollectionEquality().hash(dateTime);

  @override
  _$DailyHabitsDtoCopyWith<_DailyHabitsDto> get copyWith =>
      __$DailyHabitsDtoCopyWithImpl<_DailyHabitsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DailyHabitsDtoToJson(this);
  }
}

abstract class _DailyHabitsDto extends DailyHabitsDto {
  const _DailyHabitsDto._() : super._();
  const factory _DailyHabitsDto(
      {@required String uniqueId,
      @required List<HabitItemDto> habits,
      @required DateTime dateTime}) = _$_DailyHabitsDto;

  factory _DailyHabitsDto.fromJson(Map<String, dynamic> json) =
      _$_DailyHabitsDto.fromJson;

  @override
  String get uniqueId;
  @override
  List<HabitItemDto> get habits;
  @override
  DateTime get dateTime;
  @override
  _$DailyHabitsDtoCopyWith<_DailyHabitsDto> get copyWith;
}
