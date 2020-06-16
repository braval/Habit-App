import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits/domain/habits/value_objects.dart';
import 'package:habits/domain/user/user.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'habit_add_form_event.dart';
part 'habit_add_form_state.dart';

part 'habit_add_form_bloc.freezed.dart';

@injectable
class HabitAddFormBloc extends Bloc<HabitAddFormEvent, HabitAddFormState> {
  User currentUser;
  @override
  HabitAddFormState get initialState => HabitAddFormState.initial();

  @override
  Stream<HabitAddFormState> mapEventToState(
    HabitAddFormEvent event,
  ) async* {
    yield* event.map(
      initialize: (e) async* {
        currentUser = e.user;
        print("In initialize");
        print(currentUser.firstName);
      },
      habitNameChanged: (e) async* {},
      categorySelectedChanged: (e) async* {},
      addHabit: (e) async* {},
    );
  }
}

// BlocBuilder<UserInfoBloc, UserInfoState>(
//             builder: (context, state) {
//               state.map(
//                 initial: (_) {},
//                 busy: (_) {},
//                 userFetched: (UserFetched userFetched) {
//                   user = userFetched.user;
//                 },
//                 error: (userOption) {
//                   // TODO: Handle error state.
//                 },
//               );

//               return
