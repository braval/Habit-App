import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:habits/domain/auth/i_auth_facade.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/database/i_database_facade.dart';
import 'package:habits/domain/database/user.dart';
import 'package:injectable/injectable.dart';

part 'habit_list_event.dart';
part 'habit_list_state.dart';

part 'habit_list_bloc.freezed.dart';

@injectable
class HabitListBloc extends Bloc<HabitListEvent, HabitListState> {
  final IAuthFacade _authFacade;
  final IDatabaseFacade _databaseFacade;
  User user;

  HabitListBloc(this._authFacade, this._databaseFacade);

  @override
  HabitListState get initialState => const HabitListState.initial();

  @override
  Stream<HabitListState> mapEventToState(
    HabitListEvent event,
  ) async* {
    yield* event.map(
      newDateSelected: (e) async* {},
      newHabitAdded: (e) async* {},
      habitMarkedDone: (e) async* {},
      populateUserInfo: (e) async* {
        yield const HabitListState.fetching();
        final userOption = await _authFacade.getSignedInUser();
        if (userOption.isNone()) {
          yield const HabitListState.error();
          return;
        }
        UniqueId uid;
        userOption.fold(
          () => null,
          (user) => uid = user.id,
        );
        final currentUser = await _databaseFacade.getCurrentUser(uid);
        yield currentUser.fold(
          (l) => const HabitListState.error(),
          (r) => HabitListState.fetched(r),
        );
      },
    );
  }
}
