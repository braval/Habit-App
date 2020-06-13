import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:habits/domain/auth/i_auth_facade.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/user/i_user_repository.dart';
import 'package:habits/domain/user/user.dart';
import 'package:habits/domain/user/user_failure.dart';
import 'package:injectable/injectable.dart';

part 'habit_list_event.dart';
part 'habit_list_state.dart';

part 'habit_list_bloc.freezed.dart';

@injectable
class HabitListBloc extends Bloc<HabitListEvent, HabitListState> {
  final IAuthFacade _authFacade;
  final IUserRepository _userRepository;
  Either<UserFailure, User> currentUser;

  HabitListBloc(this._authFacade, this._userRepository);

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
        yield const HabitListState.busy();
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
        currentUser = await _userRepository.getCurrentUser(uid);
        yield currentUser.fold(
          (l) => const HabitListState.error(),
          (r) => HabitListState.fetched(r),
        );
      },
    );
  }
}
