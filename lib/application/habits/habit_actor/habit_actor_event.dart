part of 'habit_actor_bloc.dart';

@freezed
@immutable
abstract class HabitActorEvent with _$HabitActorEvent {
  const factory HabitActorEvent.initializeUser(User user) = _InitializeUser;
  const factory HabitActorEvent.deleted(HabitItem habit) = _Deleted;
  const factory HabitActorEvent.countUpdated(HabitItem habit) = _CountUpdated;
  const factory HabitActorEvent.edited(HabitItem habit) = _Edited;
}
