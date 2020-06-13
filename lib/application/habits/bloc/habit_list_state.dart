part of 'habit_list_bloc.dart';

@freezed
abstract class HabitListState with _$HabitListState {
  const factory HabitListState.initial() = Initial;
  const factory HabitListState.busy() = Busy;
  const factory HabitListState.fetched(User user) = Fetched;
  const factory HabitListState.error() = Error;
}
