import 'package:dartz/dartz.dart';
import 'package:driver_app/core/entities/auth/auth_credentials.dart';
import 'package:driver_app/core/failure/failure.dart';
import 'package:driver_app/core/repository/auth/auth_repo.dart';
import 'package:meta/meta.dart';

abstract class AuthUseCase {
  Future<bool> isUserAuthenticated();
  Future<Either<Failure, bool>> login(AuthCredentials credentials);
  Future createUser(AuthCredentials credentials);
}

class AuthUseCaseImpl implements AuthUseCase {
  final AuthRepository authRepository;

  AuthUseCaseImpl({@required this.authRepository});

  @override
  Future createUser(AuthCredentials credentials) =>
      authRepository.createUser(credentials);

  @override
  Future<bool> isUserAuthenticated() => authRepository.isUserAuthenticated();

  @override
  Future<Either<Failure, bool>> login(AuthCredentials credentials) =>
      authRepository.signIn(credentials);
}
