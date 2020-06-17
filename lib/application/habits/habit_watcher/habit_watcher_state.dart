part of 'habit_watcher_bloc.dart';

@freezed
abstract class HabitWatcherState with _$HabitWatcherState {
  const factory HabitWatcherState.initial() = _Initial;
  const factory HabitWatcherState.loadInProgress() = _LoadInProgress;
  const factory HabitWatcherState.loadSuccess(List<HabitItem> habits) =
      _LoadSuccess;
  const factory HabitWatcherState.loadFailure(HabitFailure habitFailure) =
      _LoadFailure;
}
