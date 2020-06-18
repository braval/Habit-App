// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:habits/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:habits/infrastructure/auth/firebase_auth_facade.dart';
import 'package:habits/domain/auth/i_auth_facade.dart';
import 'package:habits/infrastructure/habits/habits_repository.dart';
import 'package:habits/domain/habits/i_habits_repository.dart';
import 'package:habits/infrastructure/user/user_repository.dart';
import 'package:habits/domain/user/i_user_repository.dart';
import 'package:habits/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:habits/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:habits/application/auth/auth_bloc.dart';
import 'package:habits/application/habits/habit_actor/habit_actor_bloc.dart';
import 'package:habits/application/habits/habit_add_form/habit_add_form_bloc.dart';
import 'package:habits/application/habits/habit_watcher/habit_watcher_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(g<FirebaseAuth>(), g<GoogleSignIn>()));
  g.registerLazySingleton<IHabitsRepository>(
      () => HabitsRepository(g<Firestore>()));
  g.registerLazySingleton<IUserRepository>(
      () => UserRepository(g<Firestore>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<SignUpFormBloc>(
      () => SignUpFormBloc(g<IAuthFacade>(), g<IUserRepository>()));
  g.registerFactory<AuthBloc>(
      () => AuthBloc(g<IAuthFacade>(), g<IUserRepository>()));
  g.registerFactory<HabitActorBloc>(
      () => HabitActorBloc(g<IHabitsRepository>()));
  g.registerFactory<HabitAddFormBloc>(
      () => HabitAddFormBloc(g<IHabitsRepository>()));
  g.registerFactory<HabitWatcherBloc>(
      () => HabitWatcherBloc(g<IHabitsRepository>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
