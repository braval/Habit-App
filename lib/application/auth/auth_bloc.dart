import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:habits/domain/auth/auth_user.dart';
import 'package:habits/domain/auth/i_auth_facade.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/user/i_user_repository.dart';
import 'package:habits/domain/user/user.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  final IUserRepository _userRepository;

  AuthBloc(this._authFacade, this._userRepository);

  @override
  AuthState get initialState => const AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authFacade.getSignedInUser();
        if (userOption.isNone()) {
          yield const AuthState.unauthenticated();
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
          (l) => const AuthState.unauthenticated(),
          (user) => AuthState.authenticated(user),
        );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }

  Stream<AuthState> _getUser(AuthUser user) async* {}
}
