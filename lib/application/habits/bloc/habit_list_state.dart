part of 'habit_list_bloc.dart';

@freezed
abstract class HabitListState with _$HabitListState {
  const factory HabitListState.initial() = Initial;
  const factory HabitListState.fetching() = Fetching;
  const factory HabitListState.fetched() = Fetched;
  const factory HabitListState.error() = Error;
}
