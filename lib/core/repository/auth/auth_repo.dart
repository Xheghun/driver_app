import 'package:dartz/dartz.dart';
import 'package:driver_app/core/failure/failure.dart';
import 'package:driver_app/core/models/auth/auth_credentials.dart';

abstract class AuthRepository {
  Future<bool> isUserAuthenticated();
  Future<Either<Failure, bool>> createUser(AuthCredentials credentials);
  Future<Either<Failure, bool>> signIn(AuthCredentials credentials);
}
