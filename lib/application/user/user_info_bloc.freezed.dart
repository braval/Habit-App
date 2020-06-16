// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_info_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserInfoEventTearOff {
  const _$UserInfoEventTearOff();

  PopulateUserInfo populateUserInfo() {
    return const PopulateUserInfo();
  }
}

// ignore: unused_element
const $UserInfoEvent = _$UserInfoEventTearOff();

mixin _$UserInfoEvent {}

abstract class $UserInfoEventCopyWith<$Res> {
  factory $UserInfoEventCopyWith(
          UserInfoEvent value, $Res Function(UserInfoEvent) then) =
      _$UserInfoEventCopyWithImpl<$Res>;
}

class _$UserInfoEventCopyWithImpl<$Res>
    implements $UserInfoEventCopyWith<$Res> {
  _$UserInfoEventCopyWithImpl(this._value, this._then);

  final UserInfoEvent _value;
  // ignore: unused_field
  final $Res Function(UserInfoEvent) _then;
}

abstract class $PopulateUserInfoCopyWith<$Res> {
  factory $PopulateUserInfoCopyWith(
          PopulateUserInfo value, $Res Function(PopulateUserInfo) then) =
      _$PopulateUserInfoCopyWithImpl<$Res>;
}

class _$PopulateUserInfoCopyWithImpl<$Res>
    extends _$UserInfoEventCopyWithImpl<$Res>
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
    return 'UserInfoEvent.populateUserInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PopulateUserInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class PopulateUserInfo implements UserInfoEvent {
  const factory PopulateUserInfo() = _$PopulateUserInfo;
}

class _$UserInfoStateTearOff {
  const _$UserInfoStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Busy busy() {
    return const Busy();
  }

  UserFetched userFetched(User user) {
    return UserFetched(
      user,
    );
  }

  Error error(Option<Either<UserFailure, Unit>> userOption) {
    return Error(
      userOption,
    );
  }
}

// ignore: unused_element
const $UserInfoState = _$UserInfoStateTearOff();

mixin _$UserInfoState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result busy(),
    @required Result userFetched(User user),
    @required Result error(Option<Either<UserFailure, Unit>> userOption),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result busy(),
    Result userFetched(User user),
    Result error(Option<Either<UserFailure, Unit>> userOption),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result busy(Busy value),
    @required Result userFetched(UserFetched value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result busy(Busy value),
    Result userFetched(UserFetched value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $UserInfoStateCopyWith<$Res> {
  factory $UserInfoStateCopyWith(
          UserInfoState value, $Res Function(UserInfoState) then) =
      _$UserInfoStateCopyWithImpl<$Res>;
}

class _$UserInfoStateCopyWithImpl<$Res>
    implements $UserInfoStateCopyWith<$Res> {
  _$UserInfoStateCopyWithImpl(this._value, this._then);

  final UserInfoState _value;
  // ignore: unused_field
  final $Res Function(UserInfoState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$UserInfoStateCopyWithImpl<$Res>
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
    return 'UserInfoState.initial()';
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
    @required Result busy(),
    @required Result userFetched(User user),
    @required Result error(Option<Either<UserFailure, Unit>> userOption),
  }) {
    assert(initial != null);
    assert(busy != null);
    assert(userFetched != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result busy(),
    Result userFetched(User user),
    Result error(Option<Either<UserFailure, Unit>> userOption),
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
    @required Result busy(Busy value),
    @required Result userFetched(UserFetched value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(busy != null);
    assert(userFetched != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result busy(Busy value),
    Result userFetched(UserFetched value),
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

abstract class Initial implements UserInfoState {
  const factory Initial() = _$Initial;
}

abstract class $BusyCopyWith<$Res> {
  factory $BusyCopyWith(Busy value, $Res Function(Busy) then) =
      _$BusyCopyWithImpl<$Res>;
}

class _$BusyCopyWithImpl<$Res> extends _$UserInfoStateCopyWithImpl<$Res>
    implements $BusyCopyWith<$Res> {
  _$BusyCopyWithImpl(Busy _value, $Res Function(Busy) _then)
      : super(_value, (v) => _then(v as Busy));

  @override
  Busy get _value => super._value as Busy;
}

class _$Busy implements Busy {
  const _$Busy();

  @override
  String toString() {
    return 'UserInfoState.busy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Busy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result busy(),
    @required Result userFetched(User user),
    @required Result error(Option<Either<UserFailure, Unit>> userOption),
  }) {
    assert(initial != null);
    assert(busy != null);
    assert(userFetched != null);
    assert(error != null);
    return busy();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result busy(),
    Result userFetched(User user),
    Result error(Option<Either<UserFailure, Unit>> userOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (busy != null) {
      return busy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result busy(Busy value),
    @required Result userFetched(UserFetched value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(busy != null);
    assert(userFetched != null);
    assert(error != null);
    return busy(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result busy(Busy value),
    Result userFetched(UserFetched value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (busy != null) {
      return busy(this);
    }
    return orElse();
  }
}

abstract class Busy implements UserInfoState {
  const factory Busy() = _$Busy;
}

abstract class $UserFetchedCopyWith<$Res> {
  factory $UserFetchedCopyWith(
          UserFetched value, $Res Function(UserFetched) then) =
      _$UserFetchedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$UserFetchedCopyWithImpl<$Res> extends _$UserInfoStateCopyWithImpl<$Res>
    implements $UserFetchedCopyWith<$Res> {
  _$UserFetchedCopyWithImpl(
      UserFetched _value, $Res Function(UserFetched) _then)
      : super(_value, (v) => _then(v as UserFetched));

  @override
  UserFetched get _value => super._value as UserFetched;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(UserFetched(
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

class _$UserFetched implements UserFetched {
  const _$UserFetched(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'UserInfoState.userFetched(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserFetched &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $UserFetchedCopyWith<UserFetched> get copyWith =>
      _$UserFetchedCopyWithImpl<UserFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result busy(),
    @required Result userFetched(User user),
    @required Result error(Option<Either<UserFailure, Unit>> userOption),
  }) {
    assert(initial != null);
    assert(busy != null);
    assert(userFetched != null);
    assert(error != null);
    return userFetched(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result busy(),
    Result userFetched(User user),
    Result error(Option<Either<UserFailure, Unit>> userOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userFetched != null) {
      return userFetched(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result busy(Busy value),
    @required Result userFetched(UserFetched value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(busy != null);
    assert(userFetched != null);
    assert(error != null);
    return userFetched(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result busy(Busy value),
    Result userFetched(UserFetched value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userFetched != null) {
      return userFetched(this);
    }
    return orElse();
  }
}

abstract class UserFetched implements UserInfoState {
  const factory UserFetched(User user) = _$UserFetched;

  User get user;
  $UserFetchedCopyWith<UserFetched> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({Option<Either<UserFailure, Unit>> userOption});
}

class _$ErrorCopyWithImpl<$Res> extends _$UserInfoStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object userOption = freezed,
  }) {
    return _then(Error(
      userOption == freezed
          ? _value.userOption
          : userOption as Option<Either<UserFailure, Unit>>,
    ));
  }
}

class _$Error implements Error {
  const _$Error(this.userOption) : assert(userOption != null);

  @override
  final Option<Either<UserFailure, Unit>> userOption;

  @override
  String toString() {
    return 'UserInfoState.error(userOption: $userOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.userOption, userOption) ||
                const DeepCollectionEquality()
                    .equals(other.userOption, userOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userOption);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result busy(),
    @required Result userFetched(User user),
    @required Result error(Option<Either<UserFailure, Unit>> userOption),
  }) {
    assert(initial != null);
    assert(busy != null);
    assert(userFetched != null);
    assert(error != null);
    return error(userOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result busy(),
    Result userFetched(User user),
    Result error(Option<Either<UserFailure, Unit>> userOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(userOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result busy(Busy value),
    @required Result userFetched(UserFetched value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(busy != null);
    assert(userFetched != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result busy(Busy value),
    Result userFetched(UserFetched value),
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

abstract class Error implements UserInfoState {
  const factory Error(Option<Either<UserFailure, Unit>> userOption) = _$Error;

  Option<Either<UserFailure, Unit>> get userOption;
  $ErrorCopyWith<Error> get copyWith;
}
