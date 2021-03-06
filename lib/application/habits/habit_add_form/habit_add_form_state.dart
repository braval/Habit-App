part of 'habit_add_form_bloc.dart';

@freezed
abstract class HabitAddFormState with _$HabitAddFormState {
  const factory HabitAddFormState({
    @required HabitName habitName,
    @required HabitCategoryName habitCategoryName,
    @required int habitCount,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required Option<Either<HabitFailure, Unit>> habitFailureOrSuccessOption,
  }) = _HabitAddFormState;

  factory HabitAddFormState.initial() => HabitAddFormState(
        habitName: HabitName(''),
        habitCategoryName: HabitCategoryName(''),
        isSubmitting: false,
        habitCount: 1,
        showErrorMessages: false,
        habitFailureOrSuccessOption: none(),
      );
}
