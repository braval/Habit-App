// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'habit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HabitItemTearOff {
  const _$HabitItemTearOff();

  _HabitItem call(
      {@required UniqueId id,
      @required HabitName name,
      @required HabitCategoryName category,
      @required bool done,
      @required int count}) {
    return _HabitItem(
      id: id,
      name: name,
      category: category,
      done: done,
      count: count,
    );
  }
}

// ignore: unused_element
const $HabitItem = _$HabitItemTearOff();

mixin _$HabitItem {
  UniqueId get id;
  HabitName get name;
  HabitCategoryName get category;
  bool get done;
  int get count;

  $HabitItemCopyWith<HabitItem> get copyWith;
}

abstract class $HabitItemCopyWith<$Res> {
  factory $HabitItemCopyWith(HabitItem value, $Res Function(HabitItem) then) =
      _$HabitItemCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      HabitName name,
      HabitCategoryName category,
      bool done,
      int count});
}

class _$HabitItemCopyWithImpl<$Res> implements $HabitItemCopyWith<$Res> {
  _$HabitItemCopyWithImpl(this._value, this._then);

  final HabitItem _value;
  // ignore: unused_field
  final $Res Function(HabitItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object category = freezed,
    Object done = freezed,
    Object count = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as HabitName,
      category:
          category == freezed ? _value.category : category as HabitCategoryName,
      done: done == freezed ? _value.done : done as bool,
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

abstract class _$HabitItemCopyWith<$Res> implements $HabitItemCopyWith<$Res> {
  factory _$HabitItemCopyWith(
          _HabitItem value, $Res Function(_HabitItem) then) =
      __$HabitItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      HabitName name,
      HabitCategoryName category,
      bool done,
      int count});
}

class __$HabitItemCopyWithImpl<$Res> extends _$HabitItemCopyWithImpl<$Res>
    implements _$HabitItemCopyWith<$Res> {
  __$HabitItemCopyWithImpl(_HabitItem _value, $Res Function(_HabitItem) _then)
      : super(_value, (v) => _then(v as _HabitItem));

  @override
  _HabitItem get _value => super._value as _HabitItem;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object category = freezed,
    Object done = freezed,
    Object count = freezed,
  }) {
    return _then(_HabitItem(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as HabitName,
      category:
          category == freezed ? _value.category : category as HabitCategoryName,
      done: done == freezed ? _value.done : done as bool,
      count: count == freezed ? _value.count : count as int,
    ));
  }
}

class _$_HabitItem extends _HabitItem {
  const _$_HabitItem(
      {@required this.id,
      @required this.name,
      @required this.category,
      @required this.done,
      @required this.count})
      : assert(id != null),
        assert(name != null),
        assert(category != null),
        assert(done != null),
        assert(count != null),
        super._();

  @override
  final UniqueId id;
  @override
  final HabitName name;
  @override
  final HabitCategoryName category;
  @override
  final bool done;
  @override
  final int count;

  @override
  String toString() {
    return 'HabitItem(id: $id, name: $name, category: $category, done: $done, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HabitItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(done) ^
      const DeepCollectionEquality().hash(count);

  @override
  _$HabitItemCopyWith<_HabitItem> get copyWith =>
      __$HabitItemCopyWithImpl<_HabitItem>(this, _$identity);
}

abstract class _HabitItem extends HabitItem {
  const _HabitItem._() : super._();
  const factory _HabitItem(
      {@required UniqueId id,
      @required HabitName name,
      @required HabitCategoryName category,
      @required bool done,
      @required int count}) = _$_HabitItem;

  @override
  UniqueId get id;
  @override
  HabitName get name;
  @override
  HabitCategoryName get category;
  @override
  bool get done;
  @override
  int get count;
  @override
  _$HabitItemCopyWith<_HabitItem> get copyWith;
}
