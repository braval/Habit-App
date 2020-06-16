part of 'habit_add_form_bloc.dart';

@freezed
abstract class HabitAddFormState with _$HabitAddFormState {
  const factory HabitAddFormState({
    @required HabitName habitName,
    @required HabitCategoryName habitCategoryName,
    @required bool isSubmitting,
  }) = _HabitAddFormState;

  factory HabitAddFormState.initial() => HabitAddFormState(
        habitName: HabitName(''),
        habitCategoryName: HabitCategoryName(''),
        isSubmitting: false,
      );
}
