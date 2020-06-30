import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits/domain/habits/habit.dart';
import 'package:habits/domain/habits/habit_failure.dart';
import 'package:flutter/foundation.dart';
import 'package:habits/domain/habits/i_habits_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'habit_watcher_event.dart';
part 'habit_watcher_state.dart';

part 'habit_watcher_bloc.freezed.dart';

@injectable
class HabitWatcherBloc extends Bloc<HabitWatcherEvent, HabitWatcherState> {
  final IHabitsRepository _habitsRepository;

  HabitWatcherBloc(this._habitsRepository);

  @override
  HabitWatcherState get initialState => const HabitWatcherState.initial();

  @override
  Stream<HabitWatcherState> mapEventToState(
    HabitWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAll: (e) async* {
        yield const HabitWatcherState.loadInProgress();
        _habitsRepository.watchAll(e.dateTime).listen((failureOrHabits) =>
            add(HabitWatcherEvent.notesReceived(failureOrHabits)));
      },
      notesReceived: (e) async* {
        yield e.failureOrHabits.fold(
          (f) => HabitWatcherState.loadFailure(f),
          (habits) {
            return HabitWatcherState.loadSuccess(habits);
          },
        );
      },
    );
  }
}
