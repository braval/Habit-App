part of 'habit_watcher_bloc.dart';

@freezed
abstract class HabitWatcherEvent with _$HabitWatcherEvent {
  const factory HabitWatcherEvent.initializeUser(User user) = InitializeUser;
  const factory HabitWatcherEvent.watchAll() = _WatchAll;
  const factory HabitWatcherEvent.watchAllCompleted() = _WatchAllCompleted;
  const factory HabitWatcherEvent.notesReceived(
      Either<HabitFailure, List<HabitItem>> failureOrHabits) = _NotesReceived;
}
