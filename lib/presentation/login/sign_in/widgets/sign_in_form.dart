import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:habits/presentation/login/widgets/form_widget_helper.dart';
import 'package:habits/routes/router.gr.dart';
import '../../../constants.dart' as constants;

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
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
                  .pushReplacementNamed(Routes.landingPage);
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: customFormDecoration('Email Address'),
                  autocorrect: false,
                  onChanged: (value) => context
                      .bloc<SignInFormBloc>()
                      .add(SignInFormEvent.emailChanged(value)),
                  validator: (_) => context
                      .bloc<SignInFormBloc>()
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
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: customFormDecoration('Password'),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) => context
                      .bloc<SignInFormBloc>()
                      .add(SignInFormEvent.passwordChanged(value)),
                  validator: (_) =>
                      context.bloc<SignInFormBloc>().state.password.value.fold(
                            (f) => f.maybeMap(
                              shortPassword: (_) => 'Short Password',
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
                  WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
                  context.bloc<SignInFormBloc>().add(
                        const SignInFormEvent
                            .signInWithEmailAndPasswordPressed(),
                      );
                },
                child: const Text(
                  'Sign In',
                  style: kFormButtonTextStyle,
                ),
              ),
              FlatButton(
                color: constants.kDarkPurple,
                shape: kLoginButtonShape,
                onPressed: () {
                  WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
                  context
                      .bloc<SignInFormBloc>()
                      .add(const SignInFormEvent.signInWithGooglePressed());
                },
                child: const Text(
                  'Sign In With Google',
                  style: kFormButtonTextStyle,
                ),
              ),
              FlatButton(
                onPressed: () {
                  WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
                  ExtendedNavigator.of(context).pushNamed(Routes.signUpPage);
                },
                child: const Text(
                  'Register',
                  style: kFormButtonUnderlinedTextStyle,
                ),
              ),
              FlatButton(
                onPressed: () {
                  WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
                  // TODO: Fill this up
                },
                child: const Text(
                  'Forgot password',
                  style: kFormButtonUnderlinedTextStyle,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
