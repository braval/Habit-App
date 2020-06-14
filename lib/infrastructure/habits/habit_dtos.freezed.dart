// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'habit_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HabitItemDto _$HabitItemDtoFromJson(Map<String, dynamic> json) {
  return _HabitItemDto.fromJson(json);
}

class _$HabitItemDtoTearOff {
  const _$HabitItemDtoTearOff();

  _HabitItemDto call(
      {@required String uniqueId,
      @required String name,
      @required String category,
      @required bool done,
      @required int count}) {
    return _HabitItemDto(
      uniqueId: uniqueId,
      name: name,
      category: category,
      done: done,
      count: count,
    );
  }
}

// ignore: unused_element
const $HabitItemDto = _$HabitItemDtoTearOff();

mixin _$HabitItemDto {
  String get uniqueId;
  String get name;
  String get category;
  bool get done;
  int get count;

  Map<String, dynamic> toJson();
  $HabitItemDtoCopyWith<HabitItemDto> get copyWith;
}

abstract class $HabitItemDtoCopyWith<$Res> {
  factory $HabitItemDtoCopyWith(
          HabitItemDto value, $Res Function(HabitItemDto) then) =
      _$HabitItemDtoCopyWithImpl<$Res>;
  $Res call(
      {String uniqueId, String name, String category, bool done, int count});
}

class _$HabitItemDtoCopyWithImpl<$Res> implements $HabitItemDtoCopyWith<$Res> {
  _$HabitItemDtoCopyWithImpl(this._value, this._then);

  final HabitItemDto _value;
  // ignore: unused_field
  final $Res Function(HabitItemDto) _then;

  @override
  $Res call({
    Object uniqueId = freezed,
    Object name = freezed,
    Object category = freezed,
    Object done = freezed,
    Object count = freezed,
  }) {
    return _then(_value.copyWith(
      uniqueId: uniqueId == freezed ? _value.uniqueId : uniqueId as String,
      name: name == freezed ? _value.name : name as String,
      category: category == freezed ? _value.category : category as String,
      done: done == freezed ? _value.done : done as bool,
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

abstract class _$HabitItemDtoCopyWith<$Res>
    implements $HabitItemDtoCopyWith<$Res> {
  factory _$HabitItemDtoCopyWith(
          _HabitItemDto value, $Res Function(_HabitItemDto) then) =
      __$HabitItemDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uniqueId, String name, String category, bool done, int count});
}

class __$HabitItemDtoCopyWithImpl<$Res> extends _$HabitItemDtoCopyWithImpl<$Res>
    implements _$HabitItemDtoCopyWith<$Res> {
  __$HabitItemDtoCopyWithImpl(
      _HabitItemDto _value, $Res Function(_HabitItemDto) _then)
      : super(_value, (v) => _then(v as _HabitItemDto));

  @override
  _HabitItemDto get _value => super._value as _HabitItemDto;

  @override
  $Res call({
    Object uniqueId = freezed,
    Object name = freezed,
    Object category = freezed,
    Object done = freezed,
    Object count = freezed,
  }) {
    return _then(_HabitItemDto(
      uniqueId: uniqueId == freezed ? _value.uniqueId : uniqueId as String,
      name: name == freezed ? _value.name : name as String,
      category: category == freezed ? _value.category : category as String,
      done: done == freezed ? _value.done : done as bool,
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

@JsonSerializable()
class _$_HabitItemDto extends _HabitItemDto with DiagnosticableTreeMixin {
  const _$_HabitItemDto(
      {@required this.uniqueId,
      @required this.name,
      @required this.category,
      @required this.done,
      @required this.count})
      : assert(uniqueId != null),
        assert(name != null),
        assert(category != null),
        assert(done != null),
        assert(count != null),
        super._();

  factory _$_HabitItemDto.fromJson(Map<String, dynamic> json) =>
      _$_$_HabitItemDtoFromJson(json);

  @override
  final String uniqueId;
  @override
  final String name;
  @override
  final String category;
  @override
  final bool done;
  @override
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HabitItemDto(uniqueId: $uniqueId, name: $name, category: $category, done: $done, count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HabitItemDto'))
      ..add(DiagnosticsProperty('uniqueId', uniqueId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('done', done))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HabitItemDto &&
            (identical(other.uniqueId, uniqueId) ||
                const DeepCollectionEquality()
                    .equals(other.uniqueId, uniqueId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uniqueId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(done) ^
      const DeepCollectionEquality().hash(count);

  @override
  _$HabitItemDtoCopyWith<_HabitItemDto> get copyWith =>
      __$HabitItemDtoCopyWithImpl<_HabitItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HabitItemDtoToJson(this);
  }
}

abstract class _HabitItemDto extends HabitItemDto {
  const _HabitItemDto._() : super._();
  const factory _HabitItemDto(
      {@required String uniqueId,
      @required String name,
      @required String category,
      @required bool done,
      @required int count}) = _$_HabitItemDto;

  factory _HabitItemDto.fromJson(Map<String, dynamic> json) =
      _$_HabitItemDto.fromJson;

  @override
  String get uniqueId;
  @override
  String get name;
  @override
  String get category;
  @override
  bool get done;
  @override
  int get count;
  @override
  _$HabitItemDtoCopyWith<_HabitItemDto> get copyWith;
}
