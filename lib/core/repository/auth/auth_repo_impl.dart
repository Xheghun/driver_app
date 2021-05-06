import 'package:driver_app/core/data/remote/auth/auth_webservice.dart';
import 'package:driver_app/core/data/remote/user_profile/user_profile_webservice.dart';
import 'package:driver_app/core/errors/server_error.dart';
import 'package:driver_app/core/entities/auth/auth_credentials.dart';
import 'package:driver_app/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:driver_app/core/entities/user/user_data.dart';
import 'package:driver_app/core/repository/auth/auth_repo.dart';
import 'package:meta/meta.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthWebService authWebService;
  final UserProfileWebService userProfileWebService;

  AuthRepositoryImpl({@required this.authWebService,@required this.userProfileWebService);

  @override
  Future<Either<Failure, bool>> createUser(AuthCredentials credentials) async {
    try {
      var result = await authWebService.createUser(credentials);
      var userData = UserData(
          userId: result.user.uid,
          email: result.user.email,
          fullname: credentials.fullname);
      userProfileWebService.updateProfile(userData);
      return Right(true);
    } on ServerError catch (error) {
      return Left(ServerFailure(error.message));
    }
  }

  @override
  Future<bool> isUserAuthenticated() async =>
      await authWebService.isUserAuthenticated();

  @override
  Future<Either<Failure, bool>> signIn(AuthCredentials credentials) async {
    try {
      await authWebService.signIn(credentials);
      return Right(true);
    } on ServerError catch (error) {
      return Left(ServerFailure(error.message));
    }
  }
}
