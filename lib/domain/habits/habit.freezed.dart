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
      @required int totalCount,
      @required int currentCount,
      @required int longestStreak,
      @required int currentStreak}) {
    return _HabitItem(
      id: id,
      name: name,
      category: category,
      done: done,
      totalCount: totalCount,
      currentCount: currentCount,
      longestStreak: longestStreak,
      currentStreak: currentStreak,
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
  int get totalCount;
  int get currentCount;
  int get longestStreak;
  int get currentStreak;

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
      int totalCount,
      int currentCount,
      int longestStreak,
      int currentStreak});
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
    Object totalCount = freezed,
    Object currentCount = freezed,
    Object longestStreak = freezed,
    Object currentStreak = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as HabitName,
      category:
          category == freezed ? _value.category : category as HabitCategoryName,
      done: done == freezed ? _value.done : done as bool,
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      currentCount:
          currentCount == freezed ? _value.currentCount : currentCount as int,
      longestStreak: longestStreak == freezed
          ? _value.longestStreak
          : longestStreak as int,
      currentStreak: currentStreak == freezed
          ? _value.currentStreak
          : currentStreak as int,
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
      int totalCount,
      int currentCount,
      int longestStreak,
      int currentStreak});
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
    Object totalCount = freezed,
    Object currentCount = freezed,
    Object longestStreak = freezed,
    Object currentStreak = freezed,
  }) {
    return _then(_HabitItem(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as HabitName,
      category:
          category == freezed ? _value.category : category as HabitCategoryName,
      done: done == freezed ? _value.done : done as bool,
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      currentCount:
          currentCount == freezed ? _value.currentCount : currentCount as int,
      longestStreak: longestStreak == freezed
          ? _value.longestStreak
          : longestStreak as int,
      currentStreak: currentStreak == freezed
          ? _value.currentStreak
          : currentStreak as int,
    ));
  }
}

class _$_HabitItem extends _HabitItem {
  const _$_HabitItem(
      {@required this.id,
      @required this.name,
      @required this.category,
      @required this.done,
      @required this.totalCount,
      @required this.currentCount,
      @required this.longestStreak,
      @required this.currentStreak})
      : assert(id != null),
        assert(name != null),
        assert(category != null),
        assert(done != null),
        assert(totalCount != null),
        assert(currentCount != null),
        assert(longestStreak != null),
        assert(currentStreak != null),
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
  final int totalCount;
  @override
  final int currentCount;
  @override
  final int longestStreak;
  @override
  final int currentStreak;

  @override
  String toString() {
    return 'HabitItem(id: $id, name: $name, category: $category, done: $done, totalCount: $totalCount, currentCount: $currentCount, longestStreak: $longestStreak, currentStreak: $currentStreak)';
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
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.currentCount, currentCount) ||
                const DeepCollectionEquality()
                    .equals(other.currentCount, currentCount)) &&
            (identical(other.longestStreak, longestStreak) ||
                const DeepCollectionEquality()
                    .equals(other.longestStreak, longestStreak)) &&
            (identical(other.currentStreak, currentStreak) ||
                const DeepCollectionEquality()
                    .equals(other.currentStreak, currentStreak)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(done) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(currentCount) ^
      const DeepCollectionEquality().hash(longestStreak) ^
      const DeepCollectionEquality().hash(currentStreak);

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
      @required int totalCount,
      @required int currentCount,
      @required int longestStreak,
      @required int currentStreak}) = _$_HabitItem;

  @override
  UniqueId get id;
  @override
  HabitName get name;
  @override
  HabitCategoryName get category;
  @override
  bool get done;
  @override
  int get totalCount;
  @override
  int get currentCount;
  @override
  int get longestStreak;
  @override
  int get currentStreak;
  @override
  _$HabitItemCopyWith<_HabitItem> get copyWith;
}
