import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits/domain/auth/i_auth_facade.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/user/i_user_repository.dart';
import 'package:habits/domain/user/user.dart';
import 'package:habits/domain/user/user_failure.dart';
import 'package:injectable/injectable.dart';

part 'user_info_event.dart';
part 'user_info_state.dart';

part 'user_info_bloc.freezed.dart';

@injectable
class UserInfoBloc extends Bloc<UserInfoEvent, UserInfoState> {
  final IAuthFacade _authFacade;
  final IUserRepository _userRepository;

  UserInfoBloc(this._authFacade, this._userRepository);

  @override
  UserInfoState get initialState => const UserInfoState.initial();

  @override
  Stream<UserInfoState> mapEventToState(
    UserInfoEvent event,
  ) async* {
    yield const UserInfoState.busy();

    // Get UID
    final userOption = await _authFacade.getSignedInUser();
    if (userOption.isNone()) {
      yield UserInfoState.error(
        some(left(const UserFailure.serverError())),
      );
      return;
    }

    UniqueId uid;
    userOption.fold(
      () => null,
      (user) => uid = user.id,
    );

    // Get User Info
    final currentUser = await _userRepository.getCurrentUser(uid);
    yield currentUser.fold(
        (l) => UserInfoState.error(some(left(const UserFailure.serverError()))),
        (user) => UserInfoState.userFetched(user));
  }
}
