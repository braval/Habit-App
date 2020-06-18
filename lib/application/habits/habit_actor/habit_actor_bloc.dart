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
      deleted: (e) async* {},
      countUpdated: (e) async* {},
      edited: (e) async* {},
    );
  }
}
