import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:habits/domain/habits/habit_failure.dart';
import 'package:habits/domain/habits/i_habits_repository.dart';
import 'package:habits/domain/habits/value_objects.dart';
import 'package:habits/domain/user/user.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'habit_add_form_event.dart';
part 'habit_add_form_state.dart';

part 'habit_add_form_bloc.freezed.dart';

@injectable
class HabitAddFormBloc extends Bloc<HabitAddFormEvent, HabitAddFormState> {
  final IHabitsRepository _habitsRepository;
  User currentUser;

  HabitAddFormBloc(this._habitsRepository);
  @override
  HabitAddFormState get initialState => HabitAddFormState.initial();

  @override
  Stream<HabitAddFormState> mapEventToState(
    HabitAddFormEvent event,
  ) async* {
    yield* event.map(
      habitNameChanged: (e) async* {
        yield state.copyWith(
          habitName: HabitName(e.habitNameStr),
          habitFailureOrSuccessOption: none(),
        );
      },
      categorySelectedChanged: (e) async* {
        yield state.copyWith(
          habitCategoryName: HabitCategoryName(e.habitCategoryNameStr),
          habitFailureOrSuccessOption: none(),
        );
      },
      addHabit: (e) async* {
        Either<HabitFailure, Unit> failureOrSuccess;

        final isHabitNameValid = state.habitName.isValid();
        final isHabitCategoryValid = state.habitCategoryName.isValid();

        if (isHabitCategoryValid && isHabitNameValid) {
          yield state.copyWith(
            isSubmitting: true,
            showErrorMessages: false,
          );

          failureOrSuccess = await _habitsRepository.add(
            currentUser,
            HabitItem(
              id: UniqueId(),
              name: state.habitName,
              category: state.habitCategoryName,
              done: false,
              totalCount: state.habitCount,
              currentCount: 0,
            ),
          );
        } else {
          failureOrSuccess = left(const HabitFailure.noCategorySelected());
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          habitFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      initializeUser: (e) async* {
        currentUser = e.user;
      },
      habitCountChanged: (e) async* {
        yield state.copyWith(habitCount: e.habitCountInt);
      },
    );
  }
}
