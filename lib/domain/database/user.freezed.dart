// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@required UniqueId id,
      @required Name firstName,
      @required Name lastName}) {
    return _User(
      id: id,
      firstName: firstName,
      lastName: lastName,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  UniqueId get id;
  Name get firstName;
  Name get lastName;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({UniqueId id, Name firstName, Name lastName});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      firstName: firstName == freezed ? _value.firstName : firstName as Name,
      lastName: lastName == freezed ? _value.lastName : lastName as Name,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, Name firstName, Name lastName});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId,
      firstName: firstName == freezed ? _value.firstName : firstName as Name,
      lastName: lastName == freezed ? _value.lastName : lastName as Name,
    ));
  }
}

class _$_User extends _User {
  const _$_User(
      {@required this.id, @required this.firstName, @required this.lastName})
      : assert(id != null),
        assert(firstName != null),
        assert(lastName != null),
        super._();

  @override
  final UniqueId id;
  @override
  final Name firstName;
  @override
  final Name lastName;

  @override
  String toString() {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const _User._() : super._();
  const factory _User(
      {@required UniqueId id,
      @required Name firstName,
      @required Name lastName}) = _$_User;

  @override
  UniqueId get id;
  @override
  Name get firstName;
  @override
  Name get lastName;
  @override
  _$UserCopyWith<_User> get copyWith;
}
