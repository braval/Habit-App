import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:habits/presentation/core/header_widget.dart';
import 'package:habits/presentation/login/sign_up/widget/sign_up_form.dart';
import '../../../injection.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: BlocProvider(
        create: (context) => getIt<SignUpFormBloc>(),
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: SafeArea(
            child: GestureDetector(
              onTap: () {
                WidgetsBinding.instance.focusManager.primaryFocus?.unfocus();
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Header(),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SignUpForm(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
