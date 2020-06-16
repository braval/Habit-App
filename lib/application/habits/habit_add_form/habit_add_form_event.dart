part of 'habit_add_form_bloc.dart';

@freezed
abstract class HabitAddFormEvent with _$HabitAddFormEvent {
  const factory HabitAddFormEvent.initialize(User user) = Initialize;
  const factory HabitAddFormEvent.habitNameChanged(String habitNameStr) =
      HabitNameChanged;
  const factory HabitAddFormEvent.categorySelectedChanged(
      String habitCategoryNameStr) = CategorySelectedChanged;
  const factory HabitAddFormEvent.addHabit() = AddHabit;
}
