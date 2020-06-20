import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habits/application/auth/auth_bloc.dart';
import 'package:habits/routes/router.gr.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (user) {
            ExtendedNavigator.of(context)
                .pushReplacementNamed(Routes.landingPage);
          },
          unauthenticated: (_) {
            ExtendedNavigator.of(context)
                .pushReplacementNamed(Routes.signInPage);
          },
        );
      },
      builder: (context, state) {
        context.bloc<AuthBloc>().add(const AuthEvent.authCheckRequested());
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
