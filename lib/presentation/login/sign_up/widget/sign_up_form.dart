import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:habits/presentation/login/widgets/form_widget_helper.dart';
import 'package:habits/routes/router.gr.dart';
import '../../../constants.dart' as constants;

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpFormBloc, SignUpFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                ),
              ).show(context);
            },
            (_) {
              ExtendedNavigator.of(context)
                  .pushReplacementNamed(Routes.habitsPage);
            },
          ),
        );
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Form(
              autovalidate: state.showErrorMessages,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) =>
                          FocusScope.of(context).nextFocus(),
                      decoration: customFormDecoration('First Name'),
                      onChanged: (value) => context
                          .bloc<SignUpFormBloc>()
                          .add(SignUpFormEvent.firstNameChanged(value)),
                      validator: (_) => context
                          .bloc<SignUpFormBloc>()
                          .state
                          .firstName
                          .value
                          .fold(
                            (f) => f.maybeMap(
                              invalidName: (_) => 'Please enter a first name',
                              orElse: () => "null",
                            ),
                            (_) => null,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) =>
                          FocusScope.of(context).nextFocus(),
                      decoration: customFormDecoration('Last Name'),
                      onChanged: (value) => context
                          .bloc<SignUpFormBloc>()
                          .add(SignUpFormEvent.lastNameChanged(value)),
                      validator: (_) => context
                          .bloc<SignUpFormBloc>()
                          .state
                          .lastName
                          .value
                          .fold(
                            (f) => f.maybeMap(
                              invalidName: (_) => 'Please enter a last name',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) =>
                          FocusScope.of(context).nextFocus(),
                      decoration: customFormDecoration('Email Address'),
                      onChanged: (value) => context
                          .bloc<SignUpFormBloc>()
                          .add(SignUpFormEvent.emailChanged(value)),
                      validator: (_) => context
                          .bloc<SignUpFormBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                            (f) => f.maybeMap(
                              invalidEmail: (_) => 'Invalid Email',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) =>
                          FocusScope.of(context).nextFocus(),
                      decoration: customFormDecoration('Password'),
                      onChanged: (value) => context
                          .bloc<SignUpFormBloc>()
                          .add(SignUpFormEvent.passwordChanged(value)),
                      validator: (_) => context
                          .bloc<SignUpFormBloc>()
                          .state
                          .password
                          .value
                          .fold(
                            (f) => f.maybeMap(
                              shortPassword: (_) => 'Short Password',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                      decoration: customFormDecoration('Confirm Password'),
                      onChanged: (value) => context
                          .bloc<SignUpFormBloc>()
                          .add(SignUpFormEvent.confirmPasswordChanged(value)),
                      validator: (_) => context
                          .bloc<SignUpFormBloc>()
                          .state
                          .confirmPassword
                          .value
                          .fold(
                            (f) => f.maybeMap(
                              shortPassword: (_) => 'Short Password',
                              doNotMatch: (_) => 'Passwords do not match',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                    ),
                  ),
                  FlatButton(
                    color: constants.kDarkPurple,
                    shape: kLoginButtonShape,
                    onPressed: () {
                      WidgetsBinding.instance.focusManager.primaryFocus
                          ?.unfocus();
                      context.bloc<SignUpFormBloc>().add(
                            const SignUpFormEvent
                                .registerWithEmailAndPasswordPressed(),
                          );
                    },
                    child: const Text(
                      'Register',
                      style: kFormButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
