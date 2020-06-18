part of 'habit_actor_bloc.dart';

@freezed
abstract class HabitActorState with _$HabitActorState {
  const factory HabitActorState.initial() = _Initial;
  const factory HabitActorState.actionInProgress() = _ActionInProgress;
  const factory HabitActorState.deleteSuccess() = _DeleteSuccess;
  const factory HabitActorState.deleteFailure(HabitFailure habitFailure) =
      _DeleteFailure;
  const factory HabitActorState.editSuccess() = _EditSuccess;
  const factory HabitActorState.editFailure(HabitFailure habitFailure) =
      _EditFailure;
  const factory HabitActorState.updateCountSuccess() = _UpdateCountSuccess;
  const factory HabitActorState.updateCountFailure(HabitFailure habitFailure) =
      _UpdateCountFailure;
}
