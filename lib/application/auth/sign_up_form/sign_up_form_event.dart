part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.firstNameChanged(String firstName) =
      FirstNameChanged;

  const factory SignUpFormEvent.lastNameChanged(String lastName) =
      LastNameChanged;

  const factory SignUpFormEvent.emailChanged(String emailStr) = EmailChanged;

  const factory SignUpFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  const factory SignUpFormEvent.confirmPasswordChanged(String passwordStr) =
      ConfirmPasswordChanged;

  const factory SignUpFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
}
