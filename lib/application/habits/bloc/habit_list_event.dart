part of 'habit_list_bloc.dart';

@freezed
abstract class HabitListEvent with _$HabitListEvent {
  const factory HabitListEvent.populateUserInfo() = PopulateUserInfo;
  const factory HabitListEvent.newDateSelected(DateTime date) = NewDateSelected;
  const factory HabitListEvent.newHabitAdded() = NewHabitAdded;
  const factory HabitListEvent.habitMarkedDone() = HabitMarkedDone;
}
