import 'package:driver_app/core/data/remote/auth/auth_webservice.dart';
import 'package:driver_app/core/data/remote/auth/auth_webservice_impl.dart';
import 'package:driver_app/core/data/remote/user_profile/user_profile_webservice.dart';
import 'package:driver_app/core/repository/auth/auth_repo.dart';
import 'package:driver_app/core/repository/auth/auth_repo_impl.dart';
import 'package:driver_app/core/use_case/auth/auth_usecase.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

var locator = GetIt.instance;

void setupLocator() {
  //data
  locator
    ..registerLazySingleton<AuthWebService>(
        () => AuthWebServiceImpl(firebaseAuth: locator(), logger: locator()))
    ..registerLazySingleton<UserProfileWebService>(
        () => UserProfileWebServiceImpl(firebaseDatabase: locator()))

    //repository
    ..registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
        authWebService: locator(), userProfileWebService: locator()))

    //use case
    ..registerLazySingleton<AuthUseCase>(
        () => AuthUseCaseImpl(authRepository: locator()))

    //external
    ..registerLazySingleton(() => Logger())
    ..registerLazySingleton(() => FirebaseAuth.instance)
    ..registerLazySingleton(() => FirebaseDatabase.instance);
}
