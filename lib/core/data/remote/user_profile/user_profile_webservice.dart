import 'package:driver_app/core/models/user/user_data.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:meta/meta.dart';

abstract class UserProfileWebService {
  Future updateProfile(UserData userData);
}

class UserProfileWebServiceImpl implements UserProfileWebService {
  final FirebaseDatabase firebaseDatabase;

  UserProfileWebServiceImpl({@required this.firebaseDatabase});

  @override
  Future updateProfile(UserData userData) async {
    var databaseReference = firebaseDatabase.reference();
    databaseReference.child("users").child(userData.userId).set(userData);
  }
}
