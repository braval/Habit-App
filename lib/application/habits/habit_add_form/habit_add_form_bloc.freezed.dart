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

  HabitCountChanged habitCountChanged(int habitCountInt) {
    return HabitCountChanged(
      habitCountInt,
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
    @required Result habitNameChanged(String habitNameStr),
    @required Result habitCountChanged(int habitCountInt),
    @required Result categorySelectedChanged(String habitCategoryNameStr),
    @required Result addHabit(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result habitNameChanged(String habitNameStr),
    Result habitCountChanged(int habitCountInt),
    Result categorySelectedChanged(String habitCategoryNameStr),
    Result addHabit(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result habitNameChanged(HabitNameChanged value),
    @required Result habitCountChanged(HabitCountChanged value),
    @required Result categorySelectedChanged(CategorySelectedChanged value),
    @required Result addHabit(AddHabit value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result habitNameChanged(HabitNameChanged value),
    Result habitCountChanged(HabitCountChanged value),
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
    @required Result habitCountChanged(int habitCountInt),
    @required Result categorySelectedChanged(String habitCategoryNameStr),
    @required Result addHabit(),
  }) {
    assert(habitNameChanged != null);
    assert(habitCountChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return habitNameChanged(habitNameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result habitNameChanged(String habitNameStr),
    Result habitCountChanged(int habitCountInt),
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
    @required Result habitNameChanged(HabitNameChanged value),
    @required Result habitCountChanged(HabitCountChanged value),
    @required Result categorySelectedChanged(CategorySelectedChanged value),
    @required Result addHabit(AddHabit value),
  }) {
    assert(habitNameChanged != null);
    assert(habitCountChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return habitNameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result habitNameChanged(HabitNameChanged value),
    Result habitCountChanged(HabitCountChanged value),
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

abstract class $HabitCountChangedCopyWith<$Res> {
  factory $HabitCountChangedCopyWith(
          HabitCountChanged value, $Res Function(HabitCountChanged) then) =
      _$HabitCountChangedCopyWithImpl<$Res>;
  $Res call({int habitCountInt});
}

class _$HabitCountChangedCopyWithImpl<$Res>
    extends _$HabitAddFormEventCopyWithImpl<$Res>
    implements $HabitCountChangedCopyWith<$Res> {
  _$HabitCountChangedCopyWithImpl(
      HabitCountChanged _value, $Res Function(HabitCountChanged) _then)
      : super(_value, (v) => _then(v as HabitCountChanged));

  @override
  HabitCountChanged get _value => super._value as HabitCountChanged;

  @override
  $Res call({
    Object habitCountInt = freezed,
  }) {
    return _then(HabitCountChanged(
      habitCountInt == freezed ? _value.habitCountInt : habitCountInt as int,
    ));
  }
}

class _$HabitCountChanged implements HabitCountChanged {
  const _$HabitCountChanged(this.habitCountInt) : assert(habitCountInt != null);

  @override
  final int habitCountInt;

  @override
  String toString() {
    return 'HabitAddFormEvent.habitCountChanged(habitCountInt: $habitCountInt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HabitCountChanged &&
            (identical(other.habitCountInt, habitCountInt) ||
                const DeepCollectionEquality()
                    .equals(other.habitCountInt, habitCountInt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habitCountInt);

  @override
  $HabitCountChangedCopyWith<HabitCountChanged> get copyWith =>
      _$HabitCountChangedCopyWithImpl<HabitCountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result habitNameChanged(String habitNameStr),
    @required Result habitCountChanged(int habitCountInt),
    @required Result categorySelectedChanged(String habitCategoryNameStr),
    @required Result addHabit(),
  }) {
    assert(habitNameChanged != null);
    assert(habitCountChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return habitCountChanged(habitCountInt);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result habitNameChanged(String habitNameStr),
    Result habitCountChanged(int habitCountInt),
    Result categorySelectedChanged(String habitCategoryNameStr),
    Result addHabit(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (habitCountChanged != null) {
      return habitCountChanged(habitCountInt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result habitNameChanged(HabitNameChanged value),
    @required Result habitCountChanged(HabitCountChanged value),
    @required Result categorySelectedChanged(CategorySelectedChanged value),
    @required Result addHabit(AddHabit value),
  }) {
    assert(habitNameChanged != null);
    assert(habitCountChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return habitCountChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result habitNameChanged(HabitNameChanged value),
    Result habitCountChanged(HabitCountChanged value),
    Result categorySelectedChanged(CategorySelectedChanged value),
    Result addHabit(AddHabit value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (habitCountChanged != null) {
      return habitCountChanged(this);
    }
    return orElse();
  }
}

abstract class HabitCountChanged implements HabitAddFormEvent {
  const factory HabitCountChanged(int habitCountInt) = _$HabitCountChanged;

  int get habitCountInt;
  $HabitCountChangedCopyWith<HabitCountChanged> get copyWith;
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
    @required Result habitCountChanged(int habitCountInt),
    @required Result categorySelectedChanged(String habitCategoryNameStr),
    @required Result addHabit(),
  }) {
    assert(habitNameChanged != null);
    assert(habitCountChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return categorySelectedChanged(habitCategoryNameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result habitNameChanged(String habitNameStr),
    Result habitCountChanged(int habitCountInt),
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
    @required Result habitNameChanged(HabitNameChanged value),
    @required Result habitCountChanged(HabitCountChanged value),
    @required Result categorySelectedChanged(CategorySelectedChanged value),
    @required Result addHabit(AddHabit value),
  }) {
    assert(habitNameChanged != null);
    assert(habitCountChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return categorySelectedChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result habitNameChanged(HabitNameChanged value),
    Result habitCountChanged(HabitCountChanged value),
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
    @required Result habitNameChanged(String habitNameStr),
    @required Result habitCountChanged(int habitCountInt),
    @required Result categorySelectedChanged(String habitCategoryNameStr),
    @required Result addHabit(),
  }) {
    assert(habitNameChanged != null);
    assert(habitCountChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return addHabit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result habitNameChanged(String habitNameStr),
    Result habitCountChanged(int habitCountInt),
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
    @required Result habitNameChanged(HabitNameChanged value),
    @required Result habitCountChanged(HabitCountChanged value),
    @required Result categorySelectedChanged(CategorySelectedChanged value),
    @required Result addHabit(AddHabit value),
  }) {
    assert(habitNameChanged != null);
    assert(habitCountChanged != null);
    assert(categorySelectedChanged != null);
    assert(addHabit != null);
    return addHabit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result habitNameChanged(HabitNameChanged value),
    Result habitCountChanged(HabitCountChanged value),
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
      {@required
          HabitName habitName,
      @required
          HabitCategoryName habitCategoryName,
      @required
          int habitCount,
      @required
          bool isSubmitting,
      @required
          bool showErrorMessages,
      @required
          Option<Either<HabitFailure, Unit>> habitFailureOrSuccessOption}) {
    return _HabitAddFormState(
      habitName: habitName,
      habitCategoryName: habitCategoryName,
      habitCount: habitCount,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      habitFailureOrSuccessOption: habitFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $HabitAddFormState = _$HabitAddFormStateTearOff();

mixin _$HabitAddFormState {
  HabitName get habitName;
  HabitCategoryName get habitCategoryName;
  int get habitCount;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<HabitFailure, Unit>> get habitFailureOrSuccessOption;

  $HabitAddFormStateCopyWith<HabitAddFormState> get copyWith;
}

abstract class $HabitAddFormStateCopyWith<$Res> {
  factory $HabitAddFormStateCopyWith(
          HabitAddFormState value, $Res Function(HabitAddFormState) then) =
      _$HabitAddFormStateCopyWithImpl<$Res>;
  $Res call(
      {HabitName habitName,
      HabitCategoryName habitCategoryName,
      int habitCount,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<HabitFailure, Unit>> habitFailureOrSuccessOption});
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
    Object habitCount = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object habitFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      habitName:
          habitName == freezed ? _value.habitName : habitName as HabitName,
      habitCategoryName: habitCategoryName == freezed
          ? _value.habitCategoryName
          : habitCategoryName as HabitCategoryName,
      habitCount: habitCount == freezed ? _value.habitCount : habitCount as int,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      habitFailureOrSuccessOption: habitFailureOrSuccessOption == freezed
          ? _value.habitFailureOrSuccessOption
          : habitFailureOrSuccessOption as Option<Either<HabitFailure, Unit>>,
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
      int habitCount,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<HabitFailure, Unit>> habitFailureOrSuccessOption});
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
    Object habitCount = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object habitFailureOrSuccessOption = freezed,
  }) {
    return _then(_HabitAddFormState(
      habitName:
          habitName == freezed ? _value.habitName : habitName as HabitName,
      habitCategoryName: habitCategoryName == freezed
          ? _value.habitCategoryName
          : habitCategoryName as HabitCategoryName,
      habitCount: habitCount == freezed ? _value.habitCount : habitCount as int,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      habitFailureOrSuccessOption: habitFailureOrSuccessOption == freezed
          ? _value.habitFailureOrSuccessOption
          : habitFailureOrSuccessOption as Option<Either<HabitFailure, Unit>>,
    ));
  }
}

class _$_HabitAddFormState implements _HabitAddFormState {
  const _$_HabitAddFormState(
      {@required this.habitName,
      @required this.habitCategoryName,
      @required this.habitCount,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.habitFailureOrSuccessOption})
      : assert(habitName != null),
        assert(habitCategoryName != null),
        assert(habitCount != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(habitFailureOrSuccessOption != null);

  @override
  final HabitName habitName;
  @override
  final HabitCategoryName habitCategoryName;
  @override
  final int habitCount;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<HabitFailure, Unit>> habitFailureOrSuccessOption;

  @override
  String toString() {
    return 'HabitAddFormState(habitName: $habitName, habitCategoryName: $habitCategoryName, habitCount: $habitCount, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, habitFailureOrSuccessOption: $habitFailureOrSuccessOption)';
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
            (identical(other.habitCount, habitCount) ||
                const DeepCollectionEquality()
                    .equals(other.habitCount, habitCount)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.habitFailureOrSuccessOption,
                    habitFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.habitFailureOrSuccessOption,
                    habitFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(habitName) ^
      const DeepCollectionEquality().hash(habitCategoryName) ^
      const DeepCollectionEquality().hash(habitCount) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(habitFailureOrSuccessOption);

  @override
  _$HabitAddFormStateCopyWith<_HabitAddFormState> get copyWith =>
      __$HabitAddFormStateCopyWithImpl<_HabitAddFormState>(this, _$identity);
}

abstract class _HabitAddFormState implements HabitAddFormState {
  const factory _HabitAddFormState(
          {@required
              HabitName habitName,
          @required
              HabitCategoryName habitCategoryName,
          @required
              int habitCount,
          @required
              bool isSubmitting,
          @required
              bool showErrorMessages,
          @required
              Option<Either<HabitFailure, Unit>> habitFailureOrSuccessOption}) =
      _$_HabitAddFormState;

  @override
  HabitName get habitName;
  @override
  HabitCategoryName get habitCategoryName;
  @override
  int get habitCount;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<HabitFailure, Unit>> get habitFailureOrSuccessOption;
  @override
  _$HabitAddFormStateCopyWith<_HabitAddFormState> get copyWith;
}
