part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    @required Name firstName,
    @required Name lastName,
    @required EmailAddress emailAddress,
    @required Password password,
    @required Password confirmPassword,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignUpFormState.initial() => SignUpFormState(
    firstName: Name(''),
    lastName: Name(''),
    emailAddress: EmailAddress(''),
    password: Password(''),
    confirmPassword: Password(''),
    showErrorMessages: false,
    isSubmitting: false,
    authFailureOrSuccessOption: none(),
  );
}
