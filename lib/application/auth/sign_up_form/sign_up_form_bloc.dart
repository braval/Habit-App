import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:habits/domain/auth/auth_failure.dart';
import 'package:habits/domain/auth/i_auth_facade.dart';
import 'package:habits/domain/auth/value_objects.dart';
import 'package:habits/domain/core/value_objects.dart';
import 'package:habits/domain/database/i_database_facade.dart';
import 'package:habits/domain/database/user.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

part 'sign_up_form_event.dart';

part 'sign_up_form_state.dart';

part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthFacade _authFacade;
  final IDatabaseFacade _databaseFacade;

  SignUpFormBloc(this._authFacade, this._databaseFacade);

  @override
  SignUpFormState get initialState => SignUpFormState.initial();

  @override
  Stream<SignUpFormState> mapEventToState(SignUpFormEvent event) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      confirmPasswordChanged: (e) async* {
        yield state.copyWith(
          confirmPassword: Password.fromPassword(e.passwordStr, state.password),
          authFailureOrSuccessOption: none(),
        );
      },
      firstNameChanged: (e) async* {
        yield state.copyWith(
          firstName: Name(e.firstName),
          authFailureOrSuccessOption: none(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          lastName: Name(e.lastName),
          authFailureOrSuccessOption: none(),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.registerWithEmailAndPassword,
        );
      },
    );
  }

  Stream<SignUpFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid =
        state.password.isValid() && state.confirmPassword.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );

      if (failureOrSuccess.isRight()) {
        UniqueId uid;
        final userOption = await _authFacade.getSignedInUser();
        userOption.fold(() => null, (a) => {uid = a.id});
        final User user = User(
          id: uid,
          firstName: state.firstName,
          lastName: state.lastName,
        );
        final databaseFailure = _databaseFacade.addUser(user: user);
      }
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
