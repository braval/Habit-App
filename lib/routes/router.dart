import 'package:auto_route/auto_route_annotations.dart';
import 'package:habits/presentation/habits/habits_page.dart';
import 'package:habits/presentation/login/sign_in/sign_in_page.dart';
import 'package:habits/presentation/login/sign_up/sign_up_page.dart';
import 'package:habits/presentation/splash/splash_page.dart';

@MaterialAutoRouter(generateNavigationHelperExtension: true)
class $Router {
  @initial
  SplashPage splashPage;
  HabitsPage habitsPage;
  SignInPage signInPage;
  SignUpPage signUpPage;
}
