// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'habit_add_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HabitAddFormEventTearOff {
  const _$HabitAddFormEventTearOff();

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

  AddHabit addHabit(User user) {
    return AddHabit(
      user,
    );
  }
}

// ignore: unused_element
const $HabitAddFormEvent = _$HabitAddFormEventTearOff();

mixin _$HabitAddFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result habitNameChanged(String habitNameStr),
    @required Result categorySelectedChanged(String habitCategoryNameStr),
    @required Result addHabit(User user),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result habitNameChanged(String habitNameStr),
    Result categorySelectedChanged(String habitCategoryNameStr),
    Result addHabit(User user),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result habitNameChanged(HabitNameChanged value),
    @required Result categorySelectedChanged(CategorySelectedChanged value),
    @required Result addHabit(AddHabit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
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
    @required Result habitNameChanged(String habitNameStr),
    @required Result categorySelectedChanged(String habitCategoryNameStr),
    @required Result addHabit(User user),
  }) {
    assert(habitNameChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return habitNameChanged(habitNameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result habitNameChanged(String habitNameStr),
    Result categorySelectedChanged(String habitCategoryNameStr),
    Result addHabit(User user),
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
    @required Result habitNameChanged(HabitNameChanged value),
    @required Result categorySelectedChanged(CategorySelectedChanged value),
    @required Result addHabit(AddHabit value),
  }) {
    assert(habitNameChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return habitNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
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
    @required Result habitNameChanged(String habitNameStr),
    @required Result categorySelectedChanged(String habitCategoryNameStr),
    @required Result addHabit(User user),
  }) {
    assert(habitNameChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return categorySelectedChanged(habitCategoryNameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result habitNameChanged(String habitNameStr),
    Result categorySelectedChanged(String habitCategoryNameStr),
    Result addHabit(User user),
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
    @required Result habitNameChanged(HabitNameChanged value),
    @required Result categorySelectedChanged(CategorySelectedChanged value),
    @required Result addHabit(AddHabit value),
  }) {
    assert(habitNameChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return categorySelectedChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
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
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$AddHabitCopyWithImpl<$Res> extends _$HabitAddFormEventCopyWithImpl<$Res>
    implements $AddHabitCopyWith<$Res> {
  _$AddHabitCopyWithImpl(AddHabit _value, $Res Function(AddHabit) _then)
      : super(_value, (v) => _then(v as AddHabit));

  @override
  AddHabit get _value => super._value as AddHabit;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(AddHabit(
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

class _$AddHabit implements AddHabit {
  const _$AddHabit(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'HabitAddFormEvent.addHabit(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddHabit &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $AddHabitCopyWith<AddHabit> get copyWith =>
      _$AddHabitCopyWithImpl<AddHabit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result habitNameChanged(String habitNameStr),
    @required Result categorySelectedChanged(String habitCategoryNameStr),
    @required Result addHabit(User user),
  }) {
    assert(habitNameChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return addHabit(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result habitNameChanged(String habitNameStr),
    Result categorySelectedChanged(String habitCategoryNameStr),
    Result addHabit(User user),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addHabit != null) {
      return addHabit(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result habitNameChanged(HabitNameChanged value),
    @required Result categorySelectedChanged(CategorySelectedChanged value),
    @required Result addHabit(AddHabit value),
  }) {
    assert(habitNameChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return addHabit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
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
  const factory AddHabit(User user) = _$AddHabit;

  User get user;
  $AddHabitCopyWith<AddHabit> get copyWith;
}

class _$HabitAddFormStateTearOff {
  const _$HabitAddFormStateTearOff();

  _HabitAddFormState call(
      {@required HabitName habitName,
      @required HabitCategoryName habitCategoryName,
      @required bool isSubmitting,
      @required bool showErrorMessages}) {
    return _HabitAddFormState(
      habitName: habitName,
      habitCategoryName: habitCategoryName,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
    );
  }
}

// ignore: unused_element
const $HabitAddFormState = _$HabitAddFormStateTearOff();

mixin _$HabitAddFormState {
  HabitName get habitName;
  HabitCategoryName get habitCategoryName;
  bool get isSubmitting;
  bool get showErrorMessages;

  $HabitAddFormStateCopyWith<HabitAddFormState> get copyWith;
}

abstract class $HabitAddFormStateCopyWith<$Res> {
  factory $HabitAddFormStateCopyWith(
          HabitAddFormState value, $Res Function(HabitAddFormState) then) =
      _$HabitAddFormStateCopyWithImpl<$Res>;
  $Res call(
      {HabitName habitName,
      HabitCategoryName habitCategoryName,
      bool isSubmitting,
      bool showErrorMessages});
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
    Object showErrorMessages = freezed,
  }) {
    return _then(_value.copyWith(
      habitName:
          habitName == freezed ? _value.habitName : habitName as HabitName,
      habitCategoryName: habitCategoryName == freezed
          ? _value.habitCategoryName
          : habitCategoryName as HabitCategoryName,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
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
      bool isSubmitting,
      bool showErrorMessages});
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
    Object showErrorMessages = freezed,
  }) {
    return _then(_HabitAddFormState(
      habitName:
          habitName == freezed ? _value.habitName : habitName as HabitName,
      habitCategoryName: habitCategoryName == freezed
          ? _value.habitCategoryName
          : habitCategoryName as HabitCategoryName,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
    ));
  }
}

class _$_HabitAddFormState implements _HabitAddFormState {
  const _$_HabitAddFormState(
      {@required this.habitName,
      @required this.habitCategoryName,
      @required this.isSubmitting,
      @required this.showErrorMessages})
      : assert(habitName != null),
        assert(habitCategoryName != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null);

  @override
  final HabitName habitName;
  @override
  final HabitCategoryName habitCategoryName;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'HabitAddFormState(habitName: $habitName, habitCategoryName: $habitCategoryName, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages)';
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
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(habitName) ^
      const DeepCollectionEquality().hash(habitCategoryName) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages);

  @override
  _$HabitAddFormStateCopyWith<_HabitAddFormState> get copyWith =>
      __$HabitAddFormStateCopyWithImpl<_HabitAddFormState>(this, _$identity);
}

abstract class _HabitAddFormState implements HabitAddFormState {
  const factory _HabitAddFormState(
      {@required HabitName habitName,
      @required HabitCategoryName habitCategoryName,
      @required bool isSubmitting,
      @required bool showErrorMessages}) = _$_HabitAddFormState;

  @override
  HabitName get habitName;
  @override
  HabitCategoryName get habitCategoryName;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  _$HabitAddFormStateCopyWith<_HabitAddFormState> get copyWith;
}
