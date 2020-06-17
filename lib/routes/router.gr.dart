// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:habits/presentation/splash/splash_page.dart';
import 'package:habits/presentation/habits/habits_page.dart';
import 'package:habits/domain/user/user.dart';
import 'package:habits/presentation/login/sign_in/sign_in_page.dart';
import 'package:habits/presentation/login/sign_up/sign_up_page.dart';

abstract class Routes {
  static const splashPage = '/';
  static const habitsPage = '/habits-page';
  static const signInPage = '/sign-in-page';
  static const signUpPage = '/sign-up-page';
  static const all = {
    splashPage,
    habitsPage,
    signInPage,
    signUpPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(),
          settings: settings,
        );
      case Routes.habitsPage:
        if (hasInvalidArgs<HabitsPageArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<HabitsPageArguments>(args);
        }
        final typedArgs = args as HabitsPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => HabitsPage(user: typedArgs.user),
          settings: settings,
        );
      case Routes.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInPage(),
          settings: settings,
        );
      case Routes.signUpPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignUpPage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//HabitsPage arguments holder class
class HabitsPageArguments {
  final User user;
  HabitsPageArguments({@required this.user});
}

// *************************************************************************
// Navigation helper methods extension
// **************************************************************************

extension RouterNavigationHelperMethods on ExtendedNavigatorState {
  Future pushSplashPage() => pushNamed(Routes.splashPage);

  Future pushHabitsPage({
    @required User user,
  }) =>
      pushNamed(
        Routes.habitsPage,
        arguments: HabitsPageArguments(user: user),
      );

  Future pushSignInPage() => pushNamed(Routes.signInPage);

  Future pushSignUpPage() => pushNamed(Routes.signUpPage);
}
