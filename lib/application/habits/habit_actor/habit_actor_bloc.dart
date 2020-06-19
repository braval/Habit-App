import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:habits/domain/habits/habit_failure.dart';
import 'package:habits/domain/habits/i_habits_repository.dart';
import 'package:habits/domain/user/user.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'habit_actor_event.dart';
part 'habit_actor_state.dart';

part 'habit_actor_bloc.freezed.dart';

@injectable
class HabitActorBloc extends Bloc<HabitActorEvent, HabitActorState> {
  final IHabitsRepository _habitsRepository;
  User currentUser;

  HabitActorBloc(this._habitsRepository);
  @override
  HabitActorState get initialState => const HabitActorState.initial();

  @override
  Stream<HabitActorState> mapEventToState(
    HabitActorEvent event,
  ) async* {
    yield* event.map(
      initializeUser: (e) async* {
        currentUser = e.user;
      },
      deleted: (e) async* {
        yield const HabitActorState.actionInProgress();
        final deleteResult =
            await _habitsRepository.delete(currentUser, e.habit);
        yield deleteResult.fold(
          (f) => HabitActorState.deleteFailure(f),
          (r) => const HabitActorState.deleteSuccess(),
        );
      },
      countUpdated: (e) async* {
        yield const HabitActorState.actionInProgress();

        final HabitItem updateHabitItem = e.habit.copyWith(
          currentCount: e.habit.currentCount == e.habit.totalCount
              ? 0
              : e.habit.currentCount + 1,
          done: e.habit.currentCount + 1 == e.habit.totalCount ? true : false,
        );

        final updateResult =
            await _habitsRepository.update(currentUser, updateHabitItem);
        yield updateResult.fold(
          (f) => HabitActorState.updateCountFailure(f),
          (r) => const HabitActorState.updateCountSuccess(),
        );
      },
      edited: (e) async* {},
    );
  }
}
