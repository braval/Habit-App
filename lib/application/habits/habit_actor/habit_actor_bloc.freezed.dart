// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'habit_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HabitActorEventTearOff {
  const _$HabitActorEventTearOff();

  _Deleted deleted(HabitItem habit) {
    return _Deleted(
      habit,
    );
  }

  _CountUpdated countUpdated(HabitItem habit) {
    return _CountUpdated(
      habit,
    );
  }

  _Edited edited(HabitItem habit) {
    return _Edited(
      habit,
    );
  }
}

// ignore: unused_element
const $HabitActorEvent = _$HabitActorEventTearOff();

mixin _$HabitActorEvent {
  HabitItem get habit;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(HabitItem habit),
    @required Result countUpdated(HabitItem habit),
    @required Result edited(HabitItem habit),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(HabitItem habit),
    Result countUpdated(HabitItem habit),
    Result edited(HabitItem habit),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result countUpdated(_CountUpdated value),
    @required Result edited(_Edited value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result countUpdated(_CountUpdated value),
    Result edited(_Edited value),
    @required Result orElse(),
  });

  $HabitActorEventCopyWith<HabitActorEvent> get copyWith;
}

abstract class $HabitActorEventCopyWith<$Res> {
  factory $HabitActorEventCopyWith(
          HabitActorEvent value, $Res Function(HabitActorEvent) then) =
      _$HabitActorEventCopyWithImpl<$Res>;
  $Res call({HabitItem habit});

  $HabitItemCopyWith<$Res> get habit;
}

class _$HabitActorEventCopyWithImpl<$Res>
    implements $HabitActorEventCopyWith<$Res> {
  _$HabitActorEventCopyWithImpl(this._value, this._then);

  final HabitActorEvent _value;
  // ignore: unused_field
  final $Res Function(HabitActorEvent) _then;

  @override
  $Res call({
    Object habit = freezed,
  }) {
    return _then(_value.copyWith(
      habit: habit == freezed ? _value.habit : habit as HabitItem,
    ));
  }

  @override
  $HabitItemCopyWith<$Res> get habit {
    if (_value.habit == null) {
      return null;
    }
    return $HabitItemCopyWith<$Res>(_value.habit, (value) {
      return _then(_value.copyWith(habit: value));
    });
  }
}

abstract class _$DeletedCopyWith<$Res>
    implements $HabitActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({HabitItem habit});

  @override
  $HabitItemCopyWith<$Res> get habit;
}

class __$DeletedCopyWithImpl<$Res> extends _$HabitActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object habit = freezed,
  }) {
    return _then(_Deleted(
      habit == freezed ? _value.habit : habit as HabitItem,
    ));
  }
}

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.habit) : assert(habit != null);

  @override
  final HabitItem habit;

  @override
  String toString() {
    return 'HabitActorEvent.deleted(habit: $habit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.habit, habit) ||
                const DeepCollectionEquality().equals(other.habit, habit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habit);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(HabitItem habit),
    @required Result countUpdated(HabitItem habit),
    @required Result edited(HabitItem habit),
  }) {
    assert(deleted != null);
    assert(countUpdated != null);
    assert(edited != null);
    return deleted(habit);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(HabitItem habit),
    Result countUpdated(HabitItem habit),
    Result edited(HabitItem habit),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(habit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result countUpdated(_CountUpdated value),
    @required Result edited(_Edited value),
  }) {
    assert(deleted != null);
    assert(countUpdated != null);
    assert(edited != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result countUpdated(_CountUpdated value),
    Result edited(_Edited value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements HabitActorEvent {
  const factory _Deleted(HabitItem habit) = _$_Deleted;

  @override
  HabitItem get habit;
  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

abstract class _$CountUpdatedCopyWith<$Res>
    implements $HabitActorEventCopyWith<$Res> {
  factory _$CountUpdatedCopyWith(
          _CountUpdated value, $Res Function(_CountUpdated) then) =
      __$CountUpdatedCopyWithImpl<$Res>;
  @override
  $Res call({HabitItem habit});

  @override
  $HabitItemCopyWith<$Res> get habit;
}

class __$CountUpdatedCopyWithImpl<$Res>
    extends _$HabitActorEventCopyWithImpl<$Res>
    implements _$CountUpdatedCopyWith<$Res> {
  __$CountUpdatedCopyWithImpl(
      _CountUpdated _value, $Res Function(_CountUpdated) _then)
      : super(_value, (v) => _then(v as _CountUpdated));

  @override
  _CountUpdated get _value => super._value as _CountUpdated;

  @override
  $Res call({
    Object habit = freezed,
  }) {
    return _then(_CountUpdated(
      habit == freezed ? _value.habit : habit as HabitItem,
    ));
  }
}

class _$_CountUpdated implements _CountUpdated {
  const _$_CountUpdated(this.habit) : assert(habit != null);

  @override
  final HabitItem habit;

  @override
  String toString() {
    return 'HabitActorEvent.countUpdated(habit: $habit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountUpdated &&
            (identical(other.habit, habit) ||
                const DeepCollectionEquality().equals(other.habit, habit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habit);

  @override
  _$CountUpdatedCopyWith<_CountUpdated> get copyWith =>
      __$CountUpdatedCopyWithImpl<_CountUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(HabitItem habit),
    @required Result countUpdated(HabitItem habit),
    @required Result edited(HabitItem habit),
  }) {
    assert(deleted != null);
    assert(countUpdated != null);
    assert(edited != null);
    return countUpdated(habit);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(HabitItem habit),
    Result countUpdated(HabitItem habit),
    Result edited(HabitItem habit),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (countUpdated != null) {
      return countUpdated(habit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result countUpdated(_CountUpdated value),
    @required Result edited(_Edited value),
  }) {
    assert(deleted != null);
    assert(countUpdated != null);
    assert(edited != null);
    return countUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result countUpdated(_CountUpdated value),
    Result edited(_Edited value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (countUpdated != null) {
      return countUpdated(this);
    }
    return orElse();
  }
}

abstract class _CountUpdated implements HabitActorEvent {
  const factory _CountUpdated(HabitItem habit) = _$_CountUpdated;

  @override
  HabitItem get habit;
  @override
  _$CountUpdatedCopyWith<_CountUpdated> get copyWith;
}

abstract class _$EditedCopyWith<$Res>
    implements $HabitActorEventCopyWith<$Res> {
  factory _$EditedCopyWith(_Edited value, $Res Function(_Edited) then) =
      __$EditedCopyWithImpl<$Res>;
  @override
  $Res call({HabitItem habit});

  @override
  $HabitItemCopyWith<$Res> get habit;
}

class __$EditedCopyWithImpl<$Res> extends _$HabitActorEventCopyWithImpl<$Res>
    implements _$EditedCopyWith<$Res> {
  __$EditedCopyWithImpl(_Edited _value, $Res Function(_Edited) _then)
      : super(_value, (v) => _then(v as _Edited));

  @override
  _Edited get _value => super._value as _Edited;

  @override
  $Res call({
    Object habit = freezed,
  }) {
    return _then(_Edited(
      habit == freezed ? _value.habit : habit as HabitItem,
    ));
  }
}

class _$_Edited implements _Edited {
  const _$_Edited(this.habit) : assert(habit != null);

  @override
  final HabitItem habit;

  @override
  String toString() {
    return 'HabitActorEvent.edited(habit: $habit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Edited &&
            (identical(other.habit, habit) ||
                const DeepCollectionEquality().equals(other.habit, habit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habit);

  @override
  _$EditedCopyWith<_Edited> get copyWith =>
      __$EditedCopyWithImpl<_Edited>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(HabitItem habit),
    @required Result countUpdated(HabitItem habit),
    @required Result edited(HabitItem habit),
  }) {
    assert(deleted != null);
    assert(countUpdated != null);
    assert(edited != null);
    return edited(habit);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(HabitItem habit),
    Result countUpdated(HabitItem habit),
    Result edited(HabitItem habit),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (edited != null) {
      return edited(habit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
    @required Result countUpdated(_CountUpdated value),
    @required Result edited(_Edited value),
  }) {
    assert(deleted != null);
    assert(countUpdated != null);
    assert(edited != null);
    return edited(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    Result countUpdated(_CountUpdated value),
    Result edited(_Edited value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class _Edited implements HabitActorEvent {
  const factory _Edited(HabitItem habit) = _$_Edited;

  @override
  HabitItem get habit;
  @override
  _$EditedCopyWith<_Edited> get copyWith;
}

class _$HabitActorStateTearOff {
  const _$HabitActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }

  _DeleteFailure deleteFailure(HabitFailure habitFailure) {
    return _DeleteFailure(
      habitFailure,
    );
  }

  _EditSuccess editSuccess() {
    return const _EditSuccess();
  }

  _EditFailure editFailure(HabitFailure habitFailure) {
    return _EditFailure(
      habitFailure,
    );
  }

  _UpdateCountSuccess updateCountSuccess() {
    return const _UpdateCountSuccess();
  }

  _UpdateCountFailure updateCountFailure(HabitFailure habitFailure) {
    return _UpdateCountFailure(
      habitFailure,
    );
  }
}

// ignore: unused_element
const $HabitActorState = _$HabitActorStateTearOff();

mixin _$HabitActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(HabitFailure habitFailure),
    @required Result editSuccess(),
    @required Result editFailure(HabitFailure habitFailure),
    @required Result updateCountSuccess(),
    @required Result updateCountFailure(HabitFailure habitFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(HabitFailure habitFailure),
    Result editSuccess(),
    Result editFailure(HabitFailure habitFailure),
    Result updateCountSuccess(),
    Result updateCountFailure(HabitFailure habitFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result editSuccess(_EditSuccess value),
    @required Result editFailure(_EditFailure value),
    @required Result updateCountSuccess(_UpdateCountSuccess value),
    @required Result updateCountFailure(_UpdateCountFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result editSuccess(_EditSuccess value),
    Result editFailure(_EditFailure value),
    Result updateCountSuccess(_UpdateCountSuccess value),
    Result updateCountFailure(_UpdateCountFailure value),
    @required Result orElse(),
  });
}

abstract class $HabitActorStateCopyWith<$Res> {
  factory $HabitActorStateCopyWith(
          HabitActorState value, $Res Function(HabitActorState) then) =
      _$HabitActorStateCopyWithImpl<$Res>;
}

class _$HabitActorStateCopyWithImpl<$Res>
    implements $HabitActorStateCopyWith<$Res> {
  _$HabitActorStateCopyWithImpl(this._value, this._then);

  final HabitActorState _value;
  // ignore: unused_field
  final $Res Function(HabitActorState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$HabitActorStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HabitActorState.initial()';
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
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(HabitFailure habitFailure),
    @required Result editSuccess(),
    @required Result editFailure(HabitFailure habitFailure),
    @required Result updateCountSuccess(),
    @required Result updateCountFailure(HabitFailure habitFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(HabitFailure habitFailure),
    Result editSuccess(),
    Result editFailure(HabitFailure habitFailure),
    Result updateCountSuccess(),
    Result updateCountFailure(HabitFailure habitFailure),
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
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result editSuccess(_EditSuccess value),
    @required Result editFailure(_EditFailure value),
    @required Result updateCountSuccess(_UpdateCountSuccess value),
    @required Result updateCountFailure(_UpdateCountFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result editSuccess(_EditSuccess value),
    Result editFailure(_EditFailure value),
    Result updateCountSuccess(_UpdateCountSuccess value),
    Result updateCountFailure(_UpdateCountFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HabitActorState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

class __$ActionInProgressCopyWithImpl<$Res>
    extends _$HabitActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'HabitActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(HabitFailure habitFailure),
    @required Result editSuccess(),
    @required Result editFailure(HabitFailure habitFailure),
    @required Result updateCountSuccess(),
    @required Result updateCountFailure(HabitFailure habitFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(HabitFailure habitFailure),
    Result editSuccess(),
    Result editFailure(HabitFailure habitFailure),
    Result updateCountSuccess(),
    Result updateCountFailure(HabitFailure habitFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result editSuccess(_EditSuccess value),
    @required Result editFailure(_EditFailure value),
    @required Result updateCountSuccess(_UpdateCountSuccess value),
    @required Result updateCountFailure(_UpdateCountFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result editSuccess(_EditSuccess value),
    Result editFailure(_EditFailure value),
    Result updateCountSuccess(_UpdateCountSuccess value),
    Result updateCountFailure(_UpdateCountFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements HabitActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$HabitActorStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'HabitActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(HabitFailure habitFailure),
    @required Result editSuccess(),
    @required Result editFailure(HabitFailure habitFailure),
    @required Result updateCountSuccess(),
    @required Result updateCountFailure(HabitFailure habitFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(HabitFailure habitFailure),
    Result editSuccess(),
    Result editFailure(HabitFailure habitFailure),
    Result updateCountSuccess(),
    Result updateCountFailure(HabitFailure habitFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result editSuccess(_EditSuccess value),
    @required Result editFailure(_EditFailure value),
    @required Result updateCountSuccess(_UpdateCountSuccess value),
    @required Result updateCountFailure(_UpdateCountFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result editSuccess(_EditSuccess value),
    Result editFailure(_EditFailure value),
    Result updateCountSuccess(_UpdateCountSuccess value),
    Result updateCountFailure(_UpdateCountFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements HabitActorState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({HabitFailure habitFailure});

  $HabitFailureCopyWith<$Res> get habitFailure;
}

class __$DeleteFailureCopyWithImpl<$Res>
    extends _$HabitActorStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object habitFailure = freezed,
  }) {
    return _then(_DeleteFailure(
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

class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.habitFailure) : assert(habitFailure != null);

  @override
  final HabitFailure habitFailure;

  @override
  String toString() {
    return 'HabitActorState.deleteFailure(habitFailure: $habitFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.habitFailure, habitFailure) ||
                const DeepCollectionEquality()
                    .equals(other.habitFailure, habitFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habitFailure);

  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(HabitFailure habitFailure),
    @required Result editSuccess(),
    @required Result editFailure(HabitFailure habitFailure),
    @required Result updateCountSuccess(),
    @required Result updateCountFailure(HabitFailure habitFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return deleteFailure(habitFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(HabitFailure habitFailure),
    Result editSuccess(),
    Result editFailure(HabitFailure habitFailure),
    Result updateCountSuccess(),
    Result updateCountFailure(HabitFailure habitFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(habitFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result editSuccess(_EditSuccess value),
    @required Result editFailure(_EditFailure value),
    @required Result updateCountSuccess(_UpdateCountSuccess value),
    @required Result updateCountFailure(_UpdateCountFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result editSuccess(_EditSuccess value),
    Result editFailure(_EditFailure value),
    Result updateCountSuccess(_UpdateCountSuccess value),
    Result updateCountFailure(_UpdateCountFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements HabitActorState {
  const factory _DeleteFailure(HabitFailure habitFailure) = _$_DeleteFailure;

  HabitFailure get habitFailure;
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith;
}

abstract class _$EditSuccessCopyWith<$Res> {
  factory _$EditSuccessCopyWith(
          _EditSuccess value, $Res Function(_EditSuccess) then) =
      __$EditSuccessCopyWithImpl<$Res>;
}

class __$EditSuccessCopyWithImpl<$Res>
    extends _$HabitActorStateCopyWithImpl<$Res>
    implements _$EditSuccessCopyWith<$Res> {
  __$EditSuccessCopyWithImpl(
      _EditSuccess _value, $Res Function(_EditSuccess) _then)
      : super(_value, (v) => _then(v as _EditSuccess));

  @override
  _EditSuccess get _value => super._value as _EditSuccess;
}

class _$_EditSuccess implements _EditSuccess {
  const _$_EditSuccess();

  @override
  String toString() {
    return 'HabitActorState.editSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EditSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(HabitFailure habitFailure),
    @required Result editSuccess(),
    @required Result editFailure(HabitFailure habitFailure),
    @required Result updateCountSuccess(),
    @required Result updateCountFailure(HabitFailure habitFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return editSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(HabitFailure habitFailure),
    Result editSuccess(),
    Result editFailure(HabitFailure habitFailure),
    Result updateCountSuccess(),
    Result updateCountFailure(HabitFailure habitFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editSuccess != null) {
      return editSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result editSuccess(_EditSuccess value),
    @required Result editFailure(_EditFailure value),
    @required Result updateCountSuccess(_UpdateCountSuccess value),
    @required Result updateCountFailure(_UpdateCountFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return editSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result editSuccess(_EditSuccess value),
    Result editFailure(_EditFailure value),
    Result updateCountSuccess(_UpdateCountSuccess value),
    Result updateCountFailure(_UpdateCountFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editSuccess != null) {
      return editSuccess(this);
    }
    return orElse();
  }
}

abstract class _EditSuccess implements HabitActorState {
  const factory _EditSuccess() = _$_EditSuccess;
}

abstract class _$EditFailureCopyWith<$Res> {
  factory _$EditFailureCopyWith(
          _EditFailure value, $Res Function(_EditFailure) then) =
      __$EditFailureCopyWithImpl<$Res>;
  $Res call({HabitFailure habitFailure});

  $HabitFailureCopyWith<$Res> get habitFailure;
}

class __$EditFailureCopyWithImpl<$Res>
    extends _$HabitActorStateCopyWithImpl<$Res>
    implements _$EditFailureCopyWith<$Res> {
  __$EditFailureCopyWithImpl(
      _EditFailure _value, $Res Function(_EditFailure) _then)
      : super(_value, (v) => _then(v as _EditFailure));

  @override
  _EditFailure get _value => super._value as _EditFailure;

  @override
  $Res call({
    Object habitFailure = freezed,
  }) {
    return _then(_EditFailure(
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

class _$_EditFailure implements _EditFailure {
  const _$_EditFailure(this.habitFailure) : assert(habitFailure != null);

  @override
  final HabitFailure habitFailure;

  @override
  String toString() {
    return 'HabitActorState.editFailure(habitFailure: $habitFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditFailure &&
            (identical(other.habitFailure, habitFailure) ||
                const DeepCollectionEquality()
                    .equals(other.habitFailure, habitFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habitFailure);

  @override
  _$EditFailureCopyWith<_EditFailure> get copyWith =>
      __$EditFailureCopyWithImpl<_EditFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(HabitFailure habitFailure),
    @required Result editSuccess(),
    @required Result editFailure(HabitFailure habitFailure),
    @required Result updateCountSuccess(),
    @required Result updateCountFailure(HabitFailure habitFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return editFailure(habitFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(HabitFailure habitFailure),
    Result editSuccess(),
    Result editFailure(HabitFailure habitFailure),
    Result updateCountSuccess(),
    Result updateCountFailure(HabitFailure habitFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editFailure != null) {
      return editFailure(habitFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result editSuccess(_EditSuccess value),
    @required Result editFailure(_EditFailure value),
    @required Result updateCountSuccess(_UpdateCountSuccess value),
    @required Result updateCountFailure(_UpdateCountFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return editFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result editSuccess(_EditSuccess value),
    Result editFailure(_EditFailure value),
    Result updateCountSuccess(_UpdateCountSuccess value),
    Result updateCountFailure(_UpdateCountFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (editFailure != null) {
      return editFailure(this);
    }
    return orElse();
  }
}

abstract class _EditFailure implements HabitActorState {
  const factory _EditFailure(HabitFailure habitFailure) = _$_EditFailure;

  HabitFailure get habitFailure;
  _$EditFailureCopyWith<_EditFailure> get copyWith;
}

abstract class _$UpdateCountSuccessCopyWith<$Res> {
  factory _$UpdateCountSuccessCopyWith(
          _UpdateCountSuccess value, $Res Function(_UpdateCountSuccess) then) =
      __$UpdateCountSuccessCopyWithImpl<$Res>;
}

class __$UpdateCountSuccessCopyWithImpl<$Res>
    extends _$HabitActorStateCopyWithImpl<$Res>
    implements _$UpdateCountSuccessCopyWith<$Res> {
  __$UpdateCountSuccessCopyWithImpl(
      _UpdateCountSuccess _value, $Res Function(_UpdateCountSuccess) _then)
      : super(_value, (v) => _then(v as _UpdateCountSuccess));

  @override
  _UpdateCountSuccess get _value => super._value as _UpdateCountSuccess;
}

class _$_UpdateCountSuccess implements _UpdateCountSuccess {
  const _$_UpdateCountSuccess();

  @override
  String toString() {
    return 'HabitActorState.updateCountSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateCountSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(HabitFailure habitFailure),
    @required Result editSuccess(),
    @required Result editFailure(HabitFailure habitFailure),
    @required Result updateCountSuccess(),
    @required Result updateCountFailure(HabitFailure habitFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return updateCountSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(HabitFailure habitFailure),
    Result editSuccess(),
    Result editFailure(HabitFailure habitFailure),
    Result updateCountSuccess(),
    Result updateCountFailure(HabitFailure habitFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCountSuccess != null) {
      return updateCountSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result editSuccess(_EditSuccess value),
    @required Result editFailure(_EditFailure value),
    @required Result updateCountSuccess(_UpdateCountSuccess value),
    @required Result updateCountFailure(_UpdateCountFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return updateCountSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result editSuccess(_EditSuccess value),
    Result editFailure(_EditFailure value),
    Result updateCountSuccess(_UpdateCountSuccess value),
    Result updateCountFailure(_UpdateCountFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCountSuccess != null) {
      return updateCountSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateCountSuccess implements HabitActorState {
  const factory _UpdateCountSuccess() = _$_UpdateCountSuccess;
}

abstract class _$UpdateCountFailureCopyWith<$Res> {
  factory _$UpdateCountFailureCopyWith(
          _UpdateCountFailure value, $Res Function(_UpdateCountFailure) then) =
      __$UpdateCountFailureCopyWithImpl<$Res>;
  $Res call({HabitFailure habitFailure});

  $HabitFailureCopyWith<$Res> get habitFailure;
}

class __$UpdateCountFailureCopyWithImpl<$Res>
    extends _$HabitActorStateCopyWithImpl<$Res>
    implements _$UpdateCountFailureCopyWith<$Res> {
  __$UpdateCountFailureCopyWithImpl(
      _UpdateCountFailure _value, $Res Function(_UpdateCountFailure) _then)
      : super(_value, (v) => _then(v as _UpdateCountFailure));

  @override
  _UpdateCountFailure get _value => super._value as _UpdateCountFailure;

  @override
  $Res call({
    Object habitFailure = freezed,
  }) {
    return _then(_UpdateCountFailure(
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

class _$_UpdateCountFailure implements _UpdateCountFailure {
  const _$_UpdateCountFailure(this.habitFailure) : assert(habitFailure != null);

  @override
  final HabitFailure habitFailure;

  @override
  String toString() {
    return 'HabitActorState.updateCountFailure(habitFailure: $habitFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateCountFailure &&
            (identical(other.habitFailure, habitFailure) ||
                const DeepCollectionEquality()
                    .equals(other.habitFailure, habitFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(habitFailure);

  @override
  _$UpdateCountFailureCopyWith<_UpdateCountFailure> get copyWith =>
      __$UpdateCountFailureCopyWithImpl<_UpdateCountFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteSuccess(),
    @required Result deleteFailure(HabitFailure habitFailure),
    @required Result editSuccess(),
    @required Result editFailure(HabitFailure habitFailure),
    @required Result updateCountSuccess(),
    @required Result updateCountFailure(HabitFailure habitFailure),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return updateCountFailure(habitFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteSuccess(),
    Result deleteFailure(HabitFailure habitFailure),
    Result editSuccess(),
    Result editFailure(HabitFailure habitFailure),
    Result updateCountSuccess(),
    Result updateCountFailure(HabitFailure habitFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCountFailure != null) {
      return updateCountFailure(habitFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result editSuccess(_EditSuccess value),
    @required Result editFailure(_EditFailure value),
    @required Result updateCountSuccess(_UpdateCountSuccess value),
    @required Result updateCountFailure(_UpdateCountFailure value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteSuccess != null);
    assert(deleteFailure != null);
    assert(editSuccess != null);
    assert(editFailure != null);
    assert(updateCountSuccess != null);
    assert(updateCountFailure != null);
    return updateCountFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result deleteSuccess(_DeleteSuccess value),
    Result deleteFailure(_DeleteFailure value),
    Result editSuccess(_EditSuccess value),
    Result editFailure(_EditFailure value),
    Result updateCountSuccess(_UpdateCountSuccess value),
    Result updateCountFailure(_UpdateCountFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCountFailure != null) {
      return updateCountFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateCountFailure implements HabitActorState {
  const factory _UpdateCountFailure(HabitFailure habitFailure) =
      _$_UpdateCountFailure;

  HabitFailure get habitFailure;
  _$UpdateCountFailureCopyWith<_UpdateCountFailure> get copyWith;
}
