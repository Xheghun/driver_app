import 'package:driver_app/core/entities/auth/auth_credentials.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthWebService {
  Future<bool> isUserAuthenticated();
  Future<UserCredential> createUser(AuthCredentials credentials);
  Future<UserCredential> signIn(AuthCredentials credentials);
}
