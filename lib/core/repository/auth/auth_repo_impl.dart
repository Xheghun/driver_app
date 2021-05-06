import 'package:driver_app/core/models/auth/auth_credentials.dart';
import 'package:driver_app/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:driver_app/core/repository/auth/auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<Either<Failure, bool>> createUser(AuthCredentials credentials) {
      // TODO: implement createUser
      throw UnimplementedError();
    }
  
    @override
    Future<bool> isUserAuthenticated() {
      // TODO: implement isUserAuthenticated
      throw UnimplementedError();
    }
  
    @override
    Future<Either<Failure, bool>> signIn(AuthCredentials credentials) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

}