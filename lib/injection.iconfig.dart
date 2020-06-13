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
import 'package:habits/infrastructure/database/database_facade.dart';
import 'package:habits/domain/database/i_database_facade.dart';
import 'package:habits/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:habits/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:habits/application/auth/auth_bloc.dart';
import 'package:habits/application/habits/bloc/habit_list_bloc.dart';
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
  g.registerLazySingleton<IDatabaseFacade>(
      () => DatabaseFacade(g<Firestore>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<SignUpFormBloc>(
      () => SignUpFormBloc(g<IAuthFacade>(), g<IDatabaseFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerFactory<HabitListBloc>(
      () => HabitListBloc(g<IAuthFacade>(), g<IDatabaseFacade>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
