// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'habit_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HabitListEventTearOff {
  const _$HabitListEventTearOff();

  PopulateUserInfo populateUserInfo() {
    return const PopulateUserInfo();
  }

  NewDateSelected newDateSelected(DateTime date) {
    return NewDateSelected(
      date,
    );
  }

  NewHabitAdded newHabitAdded() {
    return const NewHabitAdded();
  }

  HabitMarkedDone habitMarkedDone() {
    return const HabitMarkedDone();
  }
}

// ignore: unused_element
const $HabitListEvent = _$HabitListEventTearOff();

mixin _$HabitListEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result populateUserInfo(),
    @required Result newDateSelected(DateTime date),
    @required Result newHabitAdded(),
    @required Result habitMarkedDone(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result populateUserInfo(),
    Result newDateSelected(DateTime date),
    Result newHabitAdded(),
    Result habitMarkedDone(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result populateUserInfo(PopulateUserInfo value),
    @required Result newDateSelected(NewDateSelected value),
    @required Result newHabitAdded(NewHabitAdded value),
    @required Result habitMarkedDone(HabitMarkedDone value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result populateUserInfo(PopulateUserInfo value),
    Result newDateSelected(NewDateSelected value),
    Result newHabitAdded(NewHabitAdded value),
    Result habitMarkedDone(HabitMarkedDone value),
    @required Result orElse(),
  });
}

abstract class $HabitListEventCopyWith<$Res> {
  factory $HabitListEventCopyWith(
          HabitListEvent value, $Res Function(HabitListEvent) then) =
      _$HabitListEventCopyWithImpl<$Res>;
}

class _$HabitListEventCopyWithImpl<$Res>
    implements $HabitListEventCopyWith<$Res> {
  _$HabitListEventCopyWithImpl(this._value, this._then);

  final HabitListEvent _value;
  // ignore: unused_field
  final $Res Function(HabitListEvent) _then;
}

abstract class $PopulateUserInfoCopyWith<$Res> {
  factory $PopulateUserInfoCopyWith(
          PopulateUserInfo value, $Res Function(PopulateUserInfo) then) =
      _$PopulateUserInfoCopyWithImpl<$Res>;
}

class _$PopulateUserInfoCopyWithImpl<$Res>
    extends _$HabitListEventCopyWithImpl<$Res>
    implements $PopulateUserInfoCopyWith<$Res> {
  _$PopulateUserInfoCopyWithImpl(
      PopulateUserInfo _value, $Res Function(PopulateUserInfo) _then)
      : super(_value, (v) => _then(v as PopulateUserInfo));

  @override
  PopulateUserInfo get _value => super._value as PopulateUserInfo;
}

class _$PopulateUserInfo implements PopulateUserInfo {
  const _$PopulateUserInfo();

  @override
  String toString() {
    return 'HabitListEvent.populateUserInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PopulateUserInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result populateUserInfo(),
    @required Result newDateSelected(DateTime date),
    @required Result newHabitAdded(),
    @required Result habitMarkedDone(),
  }) {
    assert(populateUserInfo != null);
    assert(newDateSelected != null);
    assert(newHabitAdded != null);
    assert(habitMarkedDone != null);
    return populateUserInfo();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result populateUserInfo(),
    Result newDateSelected(DateTime date),
    Result newHabitAdded(),
    Result habitMarkedDone(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (populateUserInfo != null) {
      return populateUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result populateUserInfo(PopulateUserInfo value),
    @required Result newDateSelected(NewDateSelected value),
    @required Result newHabitAdded(NewHabitAdded value),
    @required Result habitMarkedDone(HabitMarkedDone value),
  }) {
    assert(populateUserInfo != null);
    assert(newDateSelected != null);
    assert(newHabitAdded != null);
    assert(habitMarkedDone != null);
    return populateUserInfo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result populateUserInfo(PopulateUserInfo value),
    Result newDateSelected(NewDateSelected value),
    Result newHabitAdded(NewHabitAdded value),
    Result habitMarkedDone(HabitMarkedDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (populateUserInfo != null) {
      return populateUserInfo(this);
    }
    return orElse();
  }
}

abstract class PopulateUserInfo implements HabitListEvent {
  const factory PopulateUserInfo() = _$PopulateUserInfo;
}

abstract class $NewDateSelectedCopyWith<$Res> {
  factory $NewDateSelectedCopyWith(
          NewDateSelected value, $Res Function(NewDateSelected) then) =
      _$NewDateSelectedCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

class _$NewDateSelectedCopyWithImpl<$Res>
    extends _$HabitListEventCopyWithImpl<$Res>
    implements $NewDateSelectedCopyWith<$Res> {
  _$NewDateSelectedCopyWithImpl(
      NewDateSelected _value, $Res Function(NewDateSelected) _then)
      : super(_value, (v) => _then(v as NewDateSelected));

  @override
  NewDateSelected get _value => super._value as NewDateSelected;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(NewDateSelected(
      date == freezed ? _value.date : date as DateTime,
    ));
  }
}

class _$NewDateSelected implements NewDateSelected {
  const _$NewDateSelected(this.date) : assert(date != null);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'HabitListEvent.newDateSelected(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NewDateSelected &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @override
  $NewDateSelectedCopyWith<NewDateSelected> get copyWith =>
      _$NewDateSelectedCopyWithImpl<NewDateSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result populateUserInfo(),
    @required Result newDateSelected(DateTime date),
    @required Result newHabitAdded(),
    @required Result habitMarkedDone(),
  }) {
    assert(populateUserInfo != null);
    assert(newDateSelected != null);
    assert(newHabitAdded != null);
    assert(habitMarkedDone != null);
    return newDateSelected(date);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result populateUserInfo(),
    Result newDateSelected(DateTime date),
    Result newHabitAdded(),
    Result habitMarkedDone(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newDateSelected != null) {
      return newDateSelected(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result populateUserInfo(PopulateUserInfo value),
    @required Result newDateSelected(NewDateSelected value),
    @required Result newHabitAdded(NewHabitAdded value),
    @required Result habitMarkedDone(HabitMarkedDone value),
  }) {
    assert(populateUserInfo != null);
    assert(newDateSelected != null);
    assert(newHabitAdded != null);
    assert(habitMarkedDone != null);
    return newDateSelected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result populateUserInfo(PopulateUserInfo value),
    Result newDateSelected(NewDateSelected value),
    Result newHabitAdded(NewHabitAdded value),
    Result habitMarkedDone(HabitMarkedDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newDateSelected != null) {
      return newDateSelected(this);
    }
    return orElse();
  }
}

abstract class NewDateSelected implements HabitListEvent {
  const factory NewDateSelected(DateTime date) = _$NewDateSelected;

  DateTime get date;
  $NewDateSelectedCopyWith<NewDateSelected> get copyWith;
}

abstract class $NewHabitAddedCopyWith<$Res> {
  factory $NewHabitAddedCopyWith(
          NewHabitAdded value, $Res Function(NewHabitAdded) then) =
      _$NewHabitAddedCopyWithImpl<$Res>;
}

class _$NewHabitAddedCopyWithImpl<$Res>
    extends _$HabitListEventCopyWithImpl<$Res>
    implements $NewHabitAddedCopyWith<$Res> {
  _$NewHabitAddedCopyWithImpl(
      NewHabitAdded _value, $Res Function(NewHabitAdded) _then)
      : super(_value, (v) => _then(v as NewHabitAdded));

  @override
  NewHabitAdded get _value => super._value as NewHabitAdded;
}

class _$NewHabitAdded implements NewHabitAdded {
  const _$NewHabitAdded();

  @override
  String toString() {
    return 'HabitListEvent.newHabitAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NewHabitAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result populateUserInfo(),
    @required Result newDateSelected(DateTime date),
    @required Result newHabitAdded(),
    @required Result habitMarkedDone(),
  }) {
    assert(populateUserInfo != null);
    assert(newDateSelected != null);
    assert(newHabitAdded != null);
    assert(habitMarkedDone != null);
    return newHabitAdded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result populateUserInfo(),
    Result newDateSelected(DateTime date),
    Result newHabitAdded(),
    Result habitMarkedDone(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newHabitAdded != null) {
      return newHabitAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result populateUserInfo(PopulateUserInfo value),
    @required Result newDateSelected(NewDateSelected value),
    @required Result newHabitAdded(NewHabitAdded value),
    @required Result habitMarkedDone(HabitMarkedDone value),
  }) {
    assert(populateUserInfo != null);
    assert(newDateSelected != null);
    assert(newHabitAdded != null);
    assert(habitMarkedDone != null);
    return newHabitAdded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result populateUserInfo(PopulateUserInfo value),
    Result newDateSelected(NewDateSelected value),
    Result newHabitAdded(NewHabitAdded value),
    Result habitMarkedDone(HabitMarkedDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newHabitAdded != null) {
      return newHabitAdded(this);
    }
    return orElse();
  }
}

abstract class NewHabitAdded implements HabitListEvent {
  const factory NewHabitAdded() = _$NewHabitAdded;
}

abstract class $HabitMarkedDoneCopyWith<$Res> {
  factory $HabitMarkedDoneCopyWith(
          HabitMarkedDone value, $Res Function(HabitMarkedDone) then) =
      _$HabitMarkedDoneCopyWithImpl<$Res>;
}

class _$HabitMarkedDoneCopyWithImpl<$Res>
    extends _$HabitListEventCopyWithImpl<$Res>
    implements $HabitMarkedDoneCopyWith<$Res> {
  _$HabitMarkedDoneCopyWithImpl(
      HabitMarkedDone _value, $Res Function(HabitMarkedDone) _then)
      : super(_value, (v) => _then(v as HabitMarkedDone));

  @override
  HabitMarkedDone get _value => super._value as HabitMarkedDone;
}

class _$HabitMarkedDone implements HabitMarkedDone {
  const _$HabitMarkedDone();

  @override
  String toString() {
    return 'HabitListEvent.habitMarkedDone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HabitMarkedDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result populateUserInfo(),
    @required Result newDateSelected(DateTime date),
    @required Result newHabitAdded(),
    @required Result habitMarkedDone(),
  }) {
    assert(populateUserInfo != null);
    assert(newDateSelected != null);
    assert(newHabitAdded != null);
    assert(habitMarkedDone != null);
    return habitMarkedDone();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result populateUserInfo(),
    Result newDateSelected(DateTime date),
    Result newHabitAdded(),
    Result habitMarkedDone(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (habitMarkedDone != null) {
      return habitMarkedDone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result populateUserInfo(PopulateUserInfo value),
    @required Result newDateSelected(NewDateSelected value),
    @required Result newHabitAdded(NewHabitAdded value),
    @required Result habitMarkedDone(HabitMarkedDone value),
  }) {
    assert(populateUserInfo != null);
    assert(newDateSelected != null);
    assert(newHabitAdded != null);
    assert(habitMarkedDone != null);
    return habitMarkedDone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result populateUserInfo(PopulateUserInfo value),
    Result newDateSelected(NewDateSelected value),
    Result newHabitAdded(NewHabitAdded value),
    Result habitMarkedDone(HabitMarkedDone value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (habitMarkedDone != null) {
      return habitMarkedDone(this);
    }
    return orElse();
  }
}

abstract class HabitMarkedDone implements HabitListEvent {
  const factory HabitMarkedDone() = _$HabitMarkedDone;
}

class _$HabitListStateTearOff {
  const _$HabitListStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Fetching fetching() {
    return const Fetching();
  }

  Fetched fetched(User user) {
    return Fetched(
      user,
    );
  }

  Error error() {
    return const Error();
  }
}

// ignore: unused_element
const $HabitListState = _$HabitListStateTearOff();

mixin _$HabitListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result fetching(),
    @required Result fetched(User user),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result fetching(),
    Result fetched(User user),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetching(Fetching value),
    @required Result fetched(Fetched value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetching(Fetching value),
    Result fetched(Fetched value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $HabitListStateCopyWith<$Res> {
  factory $HabitListStateCopyWith(
          HabitListState value, $Res Function(HabitListState) then) =
      _$HabitListStateCopyWithImpl<$Res>;
}

class _$HabitListStateCopyWithImpl<$Res>
    implements $HabitListStateCopyWith<$Res> {
  _$HabitListStateCopyWithImpl(this._value, this._then);

  final HabitListState _value;
  // ignore: unused_field
  final $Res Function(HabitListState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$HabitListStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'HabitListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result fetching(),
    @required Result fetched(User user),
    @required Result error(),
  }) {
    assert(initial != null);
    assert(fetching != null);
    assert(fetched != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result fetching(),
    Result fetched(User user),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetching(Fetching value),
    @required Result fetched(Fetched value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(fetching != null);
    assert(fetched != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetching(Fetching value),
    Result fetched(Fetched value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements HabitListState {
  const factory Initial() = _$Initial;
}

abstract class $FetchingCopyWith<$Res> {
  factory $FetchingCopyWith(Fetching value, $Res Function(Fetching) then) =
      _$FetchingCopyWithImpl<$Res>;
}

class _$FetchingCopyWithImpl<$Res> extends _$HabitListStateCopyWithImpl<$Res>
    implements $FetchingCopyWith<$Res> {
  _$FetchingCopyWithImpl(Fetching _value, $Res Function(Fetching) _then)
      : super(_value, (v) => _then(v as Fetching));

  @override
  Fetching get _value => super._value as Fetching;
}

class _$Fetching implements Fetching {
  const _$Fetching();

  @override
  String toString() {
    return 'HabitListState.fetching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Fetching);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result fetching(),
    @required Result fetched(User user),
    @required Result error(),
  }) {
    assert(initial != null);
    assert(fetching != null);
    assert(fetched != null);
    assert(error != null);
    return fetching();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result fetching(),
    Result fetched(User user),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetching(Fetching value),
    @required Result fetched(Fetched value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(fetching != null);
    assert(fetched != null);
    assert(error != null);
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetching(Fetching value),
    Result fetched(Fetched value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class Fetching implements HabitListState {
  const factory Fetching() = _$Fetching;
}

abstract class $FetchedCopyWith<$Res> {
  factory $FetchedCopyWith(Fetched value, $Res Function(Fetched) then) =
      _$FetchedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$FetchedCopyWithImpl<$Res> extends _$HabitListStateCopyWithImpl<$Res>
    implements $FetchedCopyWith<$Res> {
  _$FetchedCopyWithImpl(Fetched _value, $Res Function(Fetched) _then)
      : super(_value, (v) => _then(v as Fetched));

  @override
  Fetched get _value => super._value as Fetched;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(Fetched(
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

class _$Fetched implements Fetched {
  const _$Fetched(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'HabitListState.fetched(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Fetched &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $FetchedCopyWith<Fetched> get copyWith =>
      _$FetchedCopyWithImpl<Fetched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result fetching(),
    @required Result fetched(User user),
    @required Result error(),
  }) {
    assert(initial != null);
    assert(fetching != null);
    assert(fetched != null);
    assert(error != null);
    return fetched(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result fetching(),
    Result fetched(User user),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetched != null) {
      return fetched(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetching(Fetching value),
    @required Result fetched(Fetched value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(fetching != null);
    assert(fetched != null);
    assert(error != null);
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetching(Fetching value),
    Result fetched(Fetched value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class Fetched implements HabitListState {
  const factory Fetched(User user) = _$Fetched;

  User get user;
  $FetchedCopyWith<Fetched> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

class _$ErrorCopyWithImpl<$Res> extends _$HabitListStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;
}

class _$Error implements Error {
  const _$Error();

  @override
  String toString() {
    return 'HabitListState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result fetching(),
    @required Result fetched(User user),
    @required Result error(),
  }) {
    assert(initial != null);
    assert(fetching != null);
    assert(fetched != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result fetching(),
    Result fetched(User user),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result fetching(Fetching value),
    @required Result fetched(Fetched value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(fetching != null);
    assert(fetched != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result fetching(Fetching value),
    Result fetched(Fetched value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements HabitListState {
  const factory Error() = _$Error;
}
