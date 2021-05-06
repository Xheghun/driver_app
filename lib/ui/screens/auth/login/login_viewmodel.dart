import 'package:driver_app/app/base_viewmodel/base_viewmodel.dart';
import 'package:driver_app/core/entities/auth/auth_credentials.dart';
import 'package:driver_app/core/use_case/auth/auth_usecase.dart';
import 'package:driver_app/ui/helpers/notifier.dart';
import 'package:flutter/widgets.dart';

class LoginViewModel extends BaseViewModel {
  AuthUseCase authUseCase;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void login(BuildContext context) async {
    var credentials = AuthCredentials(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());

    var result = await authUseCase.login(credentials);

    result.fold((failure) {
      //error
      showFlushBar(context, title: "Login Error", message: failure.message);
    }, (r) {
      //success
    });
  }
}
