import 'package:driver_app/app/base_viewmodel/base_viewmodel.dart';
import 'package:driver_app/core/entities/auth/auth_credentials.dart';
import 'package:driver_app/core/use_case/auth/auth_usecase.dart';
import 'package:driver_app/ui/helpers/notifier.dart';
import 'package:driver_app/ui/screens/main/main_screeen.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class SignUpViewModel extends BaseViewModel {
  final AuthUseCase authUseCase;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _fullnameController = TextEditingController();

  SignUpViewModel({@required this.authUseCase});

  void login(BuildContext context) async {
    var credentials = AuthCredentials(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
        fullname: _fullnameController.text.trim());

    var result = await authUseCase.createUser(credentials);

    result.fold((failure) {
      //error
      showFlushBar(context, title: "SignUp Error", message: failure.message);
    }, (r) {
      //success
      Navigator.pushNamed(context, MainScreen.routeName);
    });
  }
}
