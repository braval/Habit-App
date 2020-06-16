// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'habit_add_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HabitAddFormEventTearOff {
  const _$HabitAddFormEventTearOff();

  Initialize initialize(User user) {
    return Initialize(
      user,
    );
  }

  HabitNameChanged habitNameChanged(String habitNameStr) {
    return HabitNameChanged(
      habitNameStr,
    );
  }

  CategorySelectedChanged categorySelectedChanged(String habitCategoryNameStr) {
    return CategorySelectedChanged(
      habitCategoryNameStr,
    );
  }

  AddHabit addHabit() {
    return const AddHabit();
  }
}

// ignore: unused_element
const $HabitAddFormEvent = _$HabitAddFormEventTearOff();

mixin _$HabitAddFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User user),
    @required Result habitNameChanged(String habitNameStr),
    @required Result categorySelectedChanged(String habitCategoryNameStr),
    @required Result addHabit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User user),
    Result habitNameChanged(String habitNameStr),
    Result categorySelectedChanged(String habitCategoryNameStr),
    Result addHabit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(Initialize value),
    @required Result habitNameChanged(HabitNameChanged value),
    @required Result categorySelectedChanged(CategorySelectedChanged value),
    @required Result addHabit(AddHabit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(Initialize value),
    Result habitNameChanged(HabitNameChanged value),
    Result categorySelectedChanged(CategorySelectedChanged value),
    Result addHabit(AddHabit value),
    @required Result orElse(),
  });
}

abstract class $HabitAddFormEventCopyWith<$Res> {
  factory $HabitAddFormEventCopyWith(
          HabitAddFormEvent value, $Res Function(HabitAddFormEvent) then) =
      _$HabitAddFormEventCopyWithImpl<$Res>;
}

class _$HabitAddFormEventCopyWithImpl<$Res>
    implements $HabitAddFormEventCopyWith<$Res> {
  _$HabitAddFormEventCopyWithImpl(this._value, this._then);

  final HabitAddFormEvent _value;
  // ignore: unused_field
  final $Res Function(HabitAddFormEvent) _then;
}

abstract class $InitializeCopyWith<$Res> {
  factory $InitializeCopyWith(
          Initialize value, $Res Function(Initialize) then) =
      _$InitializeCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$InitializeCopyWithImpl<$Res>
    extends _$HabitAddFormEventCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(Initialize _value, $Res Function(Initialize) _then)
      : super(_value, (v) => _then(v as Initialize));

  @override
  Initialize get _value => super._value as Initialize;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(Initialize(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$Initialize implements Initialize {
  const _$Initialize(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'HabitAddFormEvent.initialize(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initialize &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $InitializeCopyWith<Initialize> get copyWith =>
      _$InitializeCopyWithImpl<Initialize>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User user),
    @required Result habitNameChanged(String habitNameStr),
    @required Result categorySelectedChanged(String habitCategoryNameStr),
    @required Result addHabit(),
  }) {
    assert(initialize != null);
    assert(habitNameChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return initialize(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User user),
    Result habitNameChanged(String habitNameStr),
    Result categorySelectedChanged(String habitCategoryNameStr),
    Result addHabit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(Initialize value),
    @required Result habitNameChanged(HabitNameChanged value),
    @required Result categorySelectedChanged(CategorySelectedChanged value),
    @required Result addHabit(AddHabit value),
  }) {
    assert(initialize != null);
    assert(habitNameChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(Initialize value),
    Result habitNameChanged(HabitNameChanged value),
    Result categorySelectedChanged(CategorySelectedChanged value),
    Result addHabit(AddHabit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements HabitAddFormEvent {
  const factory Initialize(User user) = _$Initialize;

  User get user;
  $InitializeCopyWith<Initialize> get copyWith;
}

abstract class $HabitNameChangedCopyWith<$Res> {
  factory $HabitNameChangedCopyWith(
          HabitNameChanged value, $Res Function(HabitNameChanged) then) =
      _$HabitNameChangedCopyWithImpl<$Res>;
  $Res call({String habitNameStr});
}

class _$HabitNameChangedCopyWithImpl<$Res>
    extends _$HabitAddFormEventCopyWithImpl<$Res>
    implements $HabitNameChangedCopyWith<$Res> {
  _$HabitNameChangedCopyWithImpl(
      HabitNameChanged _value, $Res Function(HabitNameChanged) _then)
      : super(_value, (v) => _then(v as HabitNameChanged));

  @override
  HabitNameChanged get _value => super._value as HabitNameChanged;

  @override
  $Res call({
    Object habitNameStr = freezed,
  }) {
    return _then(HabitNameChanged(
      habitNameStr == freezed ? _value.habitNameStr : habitNameStr as String,
    ));
  }
}

class _$HabitNameChanged implements HabitNameChanged {
  const _$HabitNameChanged(this.habitNameStr) : assert(habitNameStr != null);

  @override
  final String habitNameStr;

  @override
  String toString() {
    return 'HabitAddFormEvent.habitNameChanged(habitNameStr: $habitNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HabitNameChanged &&
            (identical(other.habitNameStr, habitNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.habitNameStr, habitNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habitNameStr);

  @override
  $HabitNameChangedCopyWith<HabitNameChanged> get copyWith =>
      _$HabitNameChangedCopyWithImpl<HabitNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User user),
    @required Result habitNameChanged(String habitNameStr),
    @required Result categorySelectedChanged(String habitCategoryNameStr),
    @required Result addHabit(),
  }) {
    assert(initialize != null);
    assert(habitNameChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return habitNameChanged(habitNameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User user),
    Result habitNameChanged(String habitNameStr),
    Result categorySelectedChanged(String habitCategoryNameStr),
    Result addHabit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (habitNameChanged != null) {
      return habitNameChanged(habitNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(Initialize value),
    @required Result habitNameChanged(HabitNameChanged value),
    @required Result categorySelectedChanged(CategorySelectedChanged value),
    @required Result addHabit(AddHabit value),
  }) {
    assert(initialize != null);
    assert(habitNameChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return habitNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(Initialize value),
    Result habitNameChanged(HabitNameChanged value),
    Result categorySelectedChanged(CategorySelectedChanged value),
    Result addHabit(AddHabit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (habitNameChanged != null) {
      return habitNameChanged(this);
    }
    return orElse();
  }
}

abstract class HabitNameChanged implements HabitAddFormEvent {
  const factory HabitNameChanged(String habitNameStr) = _$HabitNameChanged;

  String get habitNameStr;
  $HabitNameChangedCopyWith<HabitNameChanged> get copyWith;
}

abstract class $CategorySelectedChangedCopyWith<$Res> {
  factory $CategorySelectedChangedCopyWith(CategorySelectedChanged value,
          $Res Function(CategorySelectedChanged) then) =
      _$CategorySelectedChangedCopyWithImpl<$Res>;
  $Res call({String habitCategoryNameStr});
}

class _$CategorySelectedChangedCopyWithImpl<$Res>
    extends _$HabitAddFormEventCopyWithImpl<$Res>
    implements $CategorySelectedChangedCopyWith<$Res> {
  _$CategorySelectedChangedCopyWithImpl(CategorySelectedChanged _value,
      $Res Function(CategorySelectedChanged) _then)
      : super(_value, (v) => _then(v as CategorySelectedChanged));

  @override
  CategorySelectedChanged get _value => super._value as CategorySelectedChanged;

  @override
  $Res call({
    Object habitCategoryNameStr = freezed,
  }) {
    return _then(CategorySelectedChanged(
      habitCategoryNameStr == freezed
          ? _value.habitCategoryNameStr
          : habitCategoryNameStr as String,
    ));
  }
}

class _$CategorySelectedChanged implements CategorySelectedChanged {
  const _$CategorySelectedChanged(this.habitCategoryNameStr)
      : assert(habitCategoryNameStr != null);

  @override
  final String habitCategoryNameStr;

  @override
  String toString() {
    return 'HabitAddFormEvent.categorySelectedChanged(habitCategoryNameStr: $habitCategoryNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategorySelectedChanged &&
            (identical(other.habitCategoryNameStr, habitCategoryNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.habitCategoryNameStr, habitCategoryNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(habitCategoryNameStr);

  @override
  $CategorySelectedChangedCopyWith<CategorySelectedChanged> get copyWith =>
      _$CategorySelectedChangedCopyWithImpl<CategorySelectedChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User user),
    @required Result habitNameChanged(String habitNameStr),
    @required Result categorySelectedChanged(String habitCategoryNameStr),
    @required Result addHabit(),
  }) {
    assert(initialize != null);
    assert(habitNameChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return categorySelectedChanged(habitCategoryNameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User user),
    Result habitNameChanged(String habitNameStr),
    Result categorySelectedChanged(String habitCategoryNameStr),
    Result addHabit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categorySelectedChanged != null) {
      return categorySelectedChanged(habitCategoryNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(Initialize value),
    @required Result habitNameChanged(HabitNameChanged value),
    @required Result categorySelectedChanged(CategorySelectedChanged value),
    @required Result addHabit(AddHabit value),
  }) {
    assert(initialize != null);
    assert(habitNameChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return categorySelectedChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(Initialize value),
    Result habitNameChanged(HabitNameChanged value),
    Result categorySelectedChanged(CategorySelectedChanged value),
    Result addHabit(AddHabit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categorySelectedChanged != null) {
      return categorySelectedChanged(this);
    }
    return orElse();
  }
}

abstract class CategorySelectedChanged implements HabitAddFormEvent {
  const factory CategorySelectedChanged(String habitCategoryNameStr) =
      _$CategorySelectedChanged;

  String get habitCategoryNameStr;
  $CategorySelectedChangedCopyWith<CategorySelectedChanged> get copyWith;
}

abstract class $AddHabitCopyWith<$Res> {
  factory $AddHabitCopyWith(AddHabit value, $Res Function(AddHabit) then) =
      _$AddHabitCopyWithImpl<$Res>;
}

class _$AddHabitCopyWithImpl<$Res> extends _$HabitAddFormEventCopyWithImpl<$Res>
    implements $AddHabitCopyWith<$Res> {
  _$AddHabitCopyWithImpl(AddHabit _value, $Res Function(AddHabit) _then)
      : super(_value, (v) => _then(v as AddHabit));

  @override
  AddHabit get _value => super._value as AddHabit;
}

class _$AddHabit implements AddHabit {
  const _$AddHabit();

  @override
  String toString() {
    return 'HabitAddFormEvent.addHabit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddHabit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialize(User user),
    @required Result habitNameChanged(String habitNameStr),
    @required Result categorySelectedChanged(String habitCategoryNameStr),
    @required Result addHabit(),
  }) {
    assert(initialize != null);
    assert(habitNameChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return addHabit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialize(User user),
    Result habitNameChanged(String habitNameStr),
    Result categorySelectedChanged(String habitCategoryNameStr),
    Result addHabit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addHabit != null) {
      return addHabit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialize(Initialize value),
    @required Result habitNameChanged(HabitNameChanged value),
    @required Result categorySelectedChanged(CategorySelectedChanged value),
    @required Result addHabit(AddHabit value),
  }) {
    assert(initialize != null);
    assert(habitNameChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return addHabit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialize(Initialize value),
    Result habitNameChanged(HabitNameChanged value),
    Result categorySelectedChanged(CategorySelectedChanged value),
    Result addHabit(AddHabit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addHabit != null) {
      return addHabit(this);
    }
    return orElse();
  }
}

abstract class AddHabit implements HabitAddFormEvent {
  const factory AddHabit() = _$AddHabit;
}

class _$HabitAddFormStateTearOff {
  const _$HabitAddFormStateTearOff();

  _HabitAddFormState call(
      {@required HabitName habitName,
      @required HabitCategoryName habitCategoryName,
      @required bool isSubmitting}) {
    return _HabitAddFormState(
      habitName: habitName,
      habitCategoryName: habitCategoryName,
      isSubmitting: isSubmitting,
    );
  }
}

// ignore: unused_element
const $HabitAddFormState = _$HabitAddFormStateTearOff();

mixin _$HabitAddFormState {
  HabitName get habitName;
  HabitCategoryName get habitCategoryName;
  bool get isSubmitting;

  $HabitAddFormStateCopyWith<HabitAddFormState> get copyWith;
}

abstract class $HabitAddFormStateCopyWith<$Res> {
  factory $HabitAddFormStateCopyWith(
          HabitAddFormState value, $Res Function(HabitAddFormState) then) =
      _$HabitAddFormStateCopyWithImpl<$Res>;
  $Res call(
      {HabitName habitName,
      HabitCategoryName habitCategoryName,
      bool isSubmitting});
}

class _$HabitAddFormStateCopyWithImpl<$Res>
    implements $HabitAddFormStateCopyWith<$Res> {
  _$HabitAddFormStateCopyWithImpl(this._value, this._then);

  final HabitAddFormState _value;
  // ignore: unused_field
  final $Res Function(HabitAddFormState) _then;

  @override
  $Res call({
    Object habitName = freezed,
    Object habitCategoryName = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      habitName:
          habitName == freezed ? _value.habitName : habitName as HabitName,
      habitCategoryName: habitCategoryName == freezed
          ? _value.habitCategoryName
          : habitCategoryName as HabitCategoryName,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

abstract class _$HabitAddFormStateCopyWith<$Res>
    implements $HabitAddFormStateCopyWith<$Res> {
  factory _$HabitAddFormStateCopyWith(
          _HabitAddFormState value, $Res Function(_HabitAddFormState) then) =
      __$HabitAddFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {HabitName habitName,
      HabitCategoryName habitCategoryName,
      bool isSubmitting});
}

class __$HabitAddFormStateCopyWithImpl<$Res>
    extends _$HabitAddFormStateCopyWithImpl<$Res>
    implements _$HabitAddFormStateCopyWith<$Res> {
  __$HabitAddFormStateCopyWithImpl(
      _HabitAddFormState _value, $Res Function(_HabitAddFormState) _then)
      : super(_value, (v) => _then(v as _HabitAddFormState));

  @override
  _HabitAddFormState get _value => super._value as _HabitAddFormState;

  @override
  $Res call({
    Object habitName = freezed,
    Object habitCategoryName = freezed,
    Object isSubmitting = freezed,
  }) {
    return _then(_HabitAddFormState(
      habitName:
          habitName == freezed ? _value.habitName : habitName as HabitName,
      habitCategoryName: habitCategoryName == freezed
          ? _value.habitCategoryName
          : habitCategoryName as HabitCategoryName,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
    ));
  }
}

class _$_HabitAddFormState implements _HabitAddFormState {
  const _$_HabitAddFormState(
      {@required this.habitName,
      @required this.habitCategoryName,
      @required this.isSubmitting})
      : assert(habitName != null),
        assert(habitCategoryName != null),
        assert(isSubmitting != null);

  @override
  final HabitName habitName;
  @override
  final HabitCategoryName habitCategoryName;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'HabitAddFormState(habitName: $habitName, habitCategoryName: $habitCategoryName, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HabitAddFormState &&
            (identical(other.habitName, habitName) ||
                const DeepCollectionEquality()
                    .equals(other.habitName, habitName)) &&
            (identical(other.habitCategoryName, habitCategoryName) ||
                const DeepCollectionEquality()
                    .equals(other.habitCategoryName, habitCategoryName)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(habitName) ^
      const DeepCollectionEquality().hash(habitCategoryName) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @override
  _$HabitAddFormStateCopyWith<_HabitAddFormState> get copyWith =>
      __$HabitAddFormStateCopyWithImpl<_HabitAddFormState>(this, _$identity);
}

abstract class _HabitAddFormState implements HabitAddFormState {
  const factory _HabitAddFormState(
      {@required HabitName habitName,
      @required HabitCategoryName habitCategoryName,
      @required bool isSubmitting}) = _$_HabitAddFormState;

  @override
  HabitName get habitName;
  @override
  HabitCategoryName get habitCategoryName;
  @override
  bool get isSubmitting;
  @override
  _$HabitAddFormStateCopyWith<_HabitAddFormState> get copyWith;
}
