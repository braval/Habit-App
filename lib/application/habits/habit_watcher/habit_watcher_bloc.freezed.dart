// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'habit_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HabitWatcherEventTearOff {
  const _$HabitWatcherEventTearOff();

  InitializeUser initializeUser(User user) {
    return InitializeUser(
      user,
    );
  }

  _WatchAll watchAll(DateTime date) {
    return _WatchAll(
      date,
    );
  }

  _WatchAllCompleted watchAllCompleted(DateTime date) {
    return _WatchAllCompleted(
      date,
    );
  }

  _NotesReceived notesReceived(
      Either<HabitFailure, List<HabitItem>> failureOrHabits) {
    return _NotesReceived(
      failureOrHabits,
    );
  }
}

// ignore: unused_element
const $HabitWatcherEvent = _$HabitWatcherEventTearOff();

mixin _$HabitWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeUser(User user),
    @required Result watchAll(DateTime date),
    @required Result watchAllCompleted(DateTime date),
    @required
        Result notesReceived(
            Either<HabitFailure, List<HabitItem>> failureOrHabits),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeUser(User user),
    Result watchAll(DateTime date),
    Result watchAllCompleted(DateTime date),
    Result notesReceived(Either<HabitFailure, List<HabitItem>> failureOrHabits),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeUser(InitializeUser value),
    @required Result watchAll(_WatchAll value),
    @required Result watchAllCompleted(_WatchAllCompleted value),
    @required Result notesReceived(_NotesReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeUser(InitializeUser value),
    Result watchAll(_WatchAll value),
    Result watchAllCompleted(_WatchAllCompleted value),
    Result notesReceived(_NotesReceived value),
    @required Result orElse(),
  });
}

abstract class $HabitWatcherEventCopyWith<$Res> {
  factory $HabitWatcherEventCopyWith(
          HabitWatcherEvent value, $Res Function(HabitWatcherEvent) then) =
      _$HabitWatcherEventCopyWithImpl<$Res>;
}

class _$HabitWatcherEventCopyWithImpl<$Res>
    implements $HabitWatcherEventCopyWith<$Res> {
  _$HabitWatcherEventCopyWithImpl(this._value, this._then);

  final HabitWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(HabitWatcherEvent) _then;
}

abstract class $InitializeUserCopyWith<$Res> {
  factory $InitializeUserCopyWith(
          InitializeUser value, $Res Function(InitializeUser) then) =
      _$InitializeUserCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$InitializeUserCopyWithImpl<$Res>
    extends _$HabitWatcherEventCopyWithImpl<$Res>
    implements $InitializeUserCopyWith<$Res> {
  _$InitializeUserCopyWithImpl(
      InitializeUser _value, $Res Function(InitializeUser) _then)
      : super(_value, (v) => _then(v as InitializeUser));

  @override
  InitializeUser get _value => super._value as InitializeUser;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(InitializeUser(
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

class _$InitializeUser with DiagnosticableTreeMixin implements InitializeUser {
  const _$InitializeUser(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HabitWatcherEvent.initializeUser(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HabitWatcherEvent.initializeUser'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitializeUser &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $InitializeUserCopyWith<InitializeUser> get copyWith =>
      _$InitializeUserCopyWithImpl<InitializeUser>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeUser(User user),
    @required Result watchAll(DateTime date),
    @required Result watchAllCompleted(DateTime date),
    @required
        Result notesReceived(
            Either<HabitFailure, List<HabitItem>> failureOrHabits),
  }) {
    assert(initializeUser != null);
    assert(watchAll != null);
    assert(watchAllCompleted != null);
    assert(notesReceived != null);
    return initializeUser(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeUser(User user),
    Result watchAll(DateTime date),
    Result watchAllCompleted(DateTime date),
    Result notesReceived(Either<HabitFailure, List<HabitItem>> failureOrHabits),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializeUser != null) {
      return initializeUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeUser(InitializeUser value),
    @required Result watchAll(_WatchAll value),
    @required Result watchAllCompleted(_WatchAllCompleted value),
    @required Result notesReceived(_NotesReceived value),
  }) {
    assert(initializeUser != null);
    assert(watchAll != null);
    assert(watchAllCompleted != null);
    assert(notesReceived != null);
    return initializeUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeUser(InitializeUser value),
    Result watchAll(_WatchAll value),
    Result watchAllCompleted(_WatchAllCompleted value),
    Result notesReceived(_NotesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializeUser != null) {
      return initializeUser(this);
    }
    return orElse();
  }
}

abstract class InitializeUser implements HabitWatcherEvent {
  const factory InitializeUser(User user) = _$InitializeUser;

  User get user;
  $InitializeUserCopyWith<InitializeUser> get copyWith;
}

abstract class _$WatchAllCopyWith<$Res> {
  factory _$WatchAllCopyWith(_WatchAll value, $Res Function(_WatchAll) then) =
      __$WatchAllCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

class __$WatchAllCopyWithImpl<$Res>
    extends _$HabitWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllCopyWith<$Res> {
  __$WatchAllCopyWithImpl(_WatchAll _value, $Res Function(_WatchAll) _then)
      : super(_value, (v) => _then(v as _WatchAll));

  @override
  _WatchAll get _value => super._value as _WatchAll;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(_WatchAll(
      date == freezed ? _value.date : date as DateTime,
    ));
  }
}

class _$_WatchAll with DiagnosticableTreeMixin implements _WatchAll {
  const _$_WatchAll(this.date) : assert(date != null);

  @override
  final DateTime date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HabitWatcherEvent.watchAll(date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HabitWatcherEvent.watchAll'))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAll &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @override
  _$WatchAllCopyWith<_WatchAll> get copyWith =>
      __$WatchAllCopyWithImpl<_WatchAll>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeUser(User user),
    @required Result watchAll(DateTime date),
    @required Result watchAllCompleted(DateTime date),
    @required
        Result notesReceived(
            Either<HabitFailure, List<HabitItem>> failureOrHabits),
  }) {
    assert(initializeUser != null);
    assert(watchAll != null);
    assert(watchAllCompleted != null);
    assert(notesReceived != null);
    return watchAll(date);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeUser(User user),
    Result watchAll(DateTime date),
    Result watchAllCompleted(DateTime date),
    Result notesReceived(Either<HabitFailure, List<HabitItem>> failureOrHabits),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeUser(InitializeUser value),
    @required Result watchAll(_WatchAll value),
    @required Result watchAllCompleted(_WatchAllCompleted value),
    @required Result notesReceived(_NotesReceived value),
  }) {
    assert(initializeUser != null);
    assert(watchAll != null);
    assert(watchAllCompleted != null);
    assert(notesReceived != null);
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeUser(InitializeUser value),
    Result watchAll(_WatchAll value),
    Result watchAllCompleted(_WatchAllCompleted value),
    Result notesReceived(_NotesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _WatchAll implements HabitWatcherEvent {
  const factory _WatchAll(DateTime date) = _$_WatchAll;

  DateTime get date;
  _$WatchAllCopyWith<_WatchAll> get copyWith;
}

abstract class _$WatchAllCompletedCopyWith<$Res> {
  factory _$WatchAllCompletedCopyWith(
          _WatchAllCompleted value, $Res Function(_WatchAllCompleted) then) =
      __$WatchAllCompletedCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

class __$WatchAllCompletedCopyWithImpl<$Res>
    extends _$HabitWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllCompletedCopyWith<$Res> {
  __$WatchAllCompletedCopyWithImpl(
      _WatchAllCompleted _value, $Res Function(_WatchAllCompleted) _then)
      : super(_value, (v) => _then(v as _WatchAllCompleted));

  @override
  _WatchAllCompleted get _value => super._value as _WatchAllCompleted;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(_WatchAllCompleted(
      date == freezed ? _value.date : date as DateTime,
    ));
  }
}

class _$_WatchAllCompleted
    with DiagnosticableTreeMixin
    implements _WatchAllCompleted {
  const _$_WatchAllCompleted(this.date) : assert(date != null);

  @override
  final DateTime date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HabitWatcherEvent.watchAllCompleted(date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HabitWatcherEvent.watchAllCompleted'))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllCompleted &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @override
  _$WatchAllCompletedCopyWith<_WatchAllCompleted> get copyWith =>
      __$WatchAllCompletedCopyWithImpl<_WatchAllCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeUser(User user),
    @required Result watchAll(DateTime date),
    @required Result watchAllCompleted(DateTime date),
    @required
        Result notesReceived(
            Either<HabitFailure, List<HabitItem>> failureOrHabits),
  }) {
    assert(initializeUser != null);
    assert(watchAll != null);
    assert(watchAllCompleted != null);
    assert(notesReceived != null);
    return watchAllCompleted(date);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeUser(User user),
    Result watchAll(DateTime date),
    Result watchAllCompleted(DateTime date),
    Result notesReceived(Either<HabitFailure, List<HabitItem>> failureOrHabits),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllCompleted != null) {
      return watchAllCompleted(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeUser(InitializeUser value),
    @required Result watchAll(_WatchAll value),
    @required Result watchAllCompleted(_WatchAllCompleted value),
    @required Result notesReceived(_NotesReceived value),
  }) {
    assert(initializeUser != null);
    assert(watchAll != null);
    assert(watchAllCompleted != null);
    assert(notesReceived != null);
    return watchAllCompleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeUser(InitializeUser value),
    Result watchAll(_WatchAll value),
    Result watchAllCompleted(_WatchAllCompleted value),
    Result notesReceived(_NotesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllCompleted != null) {
      return watchAllCompleted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllCompleted implements HabitWatcherEvent {
  const factory _WatchAllCompleted(DateTime date) = _$_WatchAllCompleted;

  DateTime get date;
  _$WatchAllCompletedCopyWith<_WatchAllCompleted> get copyWith;
}

abstract class _$NotesReceivedCopyWith<$Res> {
  factory _$NotesReceivedCopyWith(
          _NotesReceived value, $Res Function(_NotesReceived) then) =
      __$NotesReceivedCopyWithImpl<$Res>;
  $Res call({Either<HabitFailure, List<HabitItem>> failureOrHabits});
}

class __$NotesReceivedCopyWithImpl<$Res>
    extends _$HabitWatcherEventCopyWithImpl<$Res>
    implements _$NotesReceivedCopyWith<$Res> {
  __$NotesReceivedCopyWithImpl(
      _NotesReceived _value, $Res Function(_NotesReceived) _then)
      : super(_value, (v) => _then(v as _NotesReceived));

  @override
  _NotesReceived get _value => super._value as _NotesReceived;

  @override
  $Res call({
    Object failureOrHabits = freezed,
  }) {
    return _then(_NotesReceived(
      failureOrHabits == freezed
          ? _value.failureOrHabits
          : failureOrHabits as Either<HabitFailure, List<HabitItem>>,
    ));
  }
}

class _$_NotesReceived with DiagnosticableTreeMixin implements _NotesReceived {
  const _$_NotesReceived(this.failureOrHabits)
      : assert(failureOrHabits != null);

  @override
  final Either<HabitFailure, List<HabitItem>> failureOrHabits;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HabitWatcherEvent.notesReceived(failureOrHabits: $failureOrHabits)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HabitWatcherEvent.notesReceived'))
      ..add(DiagnosticsProperty('failureOrHabits', failureOrHabits));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotesReceived &&
            (identical(other.failureOrHabits, failureOrHabits) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrHabits, failureOrHabits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrHabits);

  @override
  _$NotesReceivedCopyWith<_NotesReceived> get copyWith =>
      __$NotesReceivedCopyWithImpl<_NotesReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeUser(User user),
    @required Result watchAll(DateTime date),
    @required Result watchAllCompleted(DateTime date),
    @required
        Result notesReceived(
            Either<HabitFailure, List<HabitItem>> failureOrHabits),
  }) {
    assert(initializeUser != null);
    assert(watchAll != null);
    assert(watchAllCompleted != null);
    assert(notesReceived != null);
    return notesReceived(failureOrHabits);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeUser(User user),
    Result watchAll(DateTime date),
    Result watchAllCompleted(DateTime date),
    Result notesReceived(Either<HabitFailure, List<HabitItem>> failureOrHabits),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notesReceived != null) {
      return notesReceived(failureOrHabits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeUser(InitializeUser value),
    @required Result watchAll(_WatchAll value),
    @required Result watchAllCompleted(_WatchAllCompleted value),
    @required Result notesReceived(_NotesReceived value),
  }) {
    assert(initializeUser != null);
    assert(watchAll != null);
    assert(watchAllCompleted != null);
    assert(notesReceived != null);
    return notesReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeUser(InitializeUser value),
    Result watchAll(_WatchAll value),
    Result watchAllCompleted(_WatchAllCompleted value),
    Result notesReceived(_NotesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notesReceived != null) {
      return notesReceived(this);
    }
    return orElse();
  }
}

abstract class _NotesReceived implements HabitWatcherEvent {
  const factory _NotesReceived(
      Either<HabitFailure, List<HabitItem>> failureOrHabits) = _$_NotesReceived;

  Either<HabitFailure, List<HabitItem>> get failureOrHabits;
  _$NotesReceivedCopyWith<_NotesReceived> get copyWith;
}

class _$HabitWatcherStateTearOff {
  const _$HabitWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<HabitItem> habits) {
    return _LoadSuccess(
      habits,
    );
  }

  _LoadFailure loadFailure(HabitFailure habitFailure) {
    return _LoadFailure(
      habitFailure,
    );
  }
}

// ignore: unused_element
const $HabitWatcherState = _$HabitWatcherStateTearOff();

mixin _$HabitWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<HabitItem> habits),
    @required Result loadFailure(HabitFailure habitFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<HabitItem> habits),
    Result loadFailure(HabitFailure habitFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $HabitWatcherStateCopyWith<$Res> {
  factory $HabitWatcherStateCopyWith(
          HabitWatcherState value, $Res Function(HabitWatcherState) then) =
      _$HabitWatcherStateCopyWithImpl<$Res>;
}

class _$HabitWatcherStateCopyWithImpl<$Res>
    implements $HabitWatcherStateCopyWith<$Res> {
  _$HabitWatcherStateCopyWithImpl(this._value, this._then);

  final HabitWatcherState _value;
  // ignore: unused_field
  final $Res Function(HabitWatcherState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$HabitWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HabitWatcherState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HabitWatcherState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<HabitItem> habits),
    @required Result loadFailure(HabitFailure habitFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<HabitItem> habits),
    Result loadFailure(HabitFailure habitFailure),
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
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HabitWatcherState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

class __$LoadInProgressCopyWithImpl<$Res>
    extends _$HabitWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

class _$_LoadInProgress
    with DiagnosticableTreeMixin
    implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HabitWatcherState.loadInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HabitWatcherState.loadInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<HabitItem> habits),
    @required Result loadFailure(HabitFailure habitFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<HabitItem> habits),
    Result loadFailure(HabitFailure habitFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements HabitWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<HabitItem> habits});
}

class __$LoadSuccessCopyWithImpl<$Res>
    extends _$HabitWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object habits = freezed,
  }) {
    return _then(_LoadSuccess(
      habits == freezed ? _value.habits : habits as List<HabitItem>,
    ));
  }
}

class _$_LoadSuccess with DiagnosticableTreeMixin implements _LoadSuccess {
  const _$_LoadSuccess(this.habits) : assert(habits != null);

  @override
  final List<HabitItem> habits;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HabitWatcherState.loadSuccess(habits: $habits)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HabitWatcherState.loadSuccess'))
      ..add(DiagnosticsProperty('habits', habits));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.habits, habits) ||
                const DeepCollectionEquality().equals(other.habits, habits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habits);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<HabitItem> habits),
    @required Result loadFailure(HabitFailure habitFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(habits);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<HabitItem> habits),
    Result loadFailure(HabitFailure habitFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(habits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements HabitWatcherState {
  const factory _LoadSuccess(List<HabitItem> habits) = _$_LoadSuccess;

  List<HabitItem> get habits;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({HabitFailure habitFailure});

  $HabitFailureCopyWith<$Res> get habitFailure;
}

class __$LoadFailureCopyWithImpl<$Res>
    extends _$HabitWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object habitFailure = freezed,
  }) {
    return _then(_LoadFailure(
      habitFailure == freezed
          ? _value.habitFailure
          : habitFailure as HabitFailure,
    ));
  }

  @override
  $HabitFailureCopyWith<$Res> get habitFailure {
    if (_value.habitFailure == null) {
      return null;
    }
    return $HabitFailureCopyWith<$Res>(_value.habitFailure, (value) {
      return _then(_value.copyWith(habitFailure: value));
    });
  }
}

class _$_LoadFailure with DiagnosticableTreeMixin implements _LoadFailure {
  const _$_LoadFailure(this.habitFailure) : assert(habitFailure != null);

  @override
  final HabitFailure habitFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HabitWatcherState.loadFailure(habitFailure: $habitFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HabitWatcherState.loadFailure'))
      ..add(DiagnosticsProperty('habitFailure', habitFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.habitFailure, habitFailure) ||
                const DeepCollectionEquality()
                    .equals(other.habitFailure, habitFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habitFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(List<HabitItem> habits),
    @required Result loadFailure(HabitFailure habitFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(habitFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(List<HabitItem> habits),
    Result loadFailure(HabitFailure habitFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(habitFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements HabitWatcherState {
  const factory _LoadFailure(HabitFailure habitFailure) = _$_LoadFailure;

  HabitFailure get habitFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
