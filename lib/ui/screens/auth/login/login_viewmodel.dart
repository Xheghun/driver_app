import 'package:driver_app/app/base_viewmodel/base_viewmodel.dart';
import 'package:driver_app/app/base_viewmodel/view_state.dart';
import 'package:driver_app/app/helpers/validators/string_validator.dart';
import 'package:driver_app/core/entities/auth/auth_credentials.dart';
import 'package:driver_app/core/use_case/auth/auth_usecase.dart';
import 'package:driver_app/ui/helpers/notifier.dart';
import 'package:driver_app/ui/screens/main/main_screeen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';

class LoginViewModel extends BaseViewModel {
  final AuthUseCase authUseCase;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginViewModel({@required this.authUseCase});

  void _message(BuildContext context, String text) {
    showFlushBar(context, title: "Validation Error", message: text);
  }

  void validateInput(BuildContext context) {
    if (!isTextEmail(emailController.text.trim())) {
      _message(context, "please provide a valid email");
      return;
    } else if (passwordController.text.trim().isEmpty) {
      _message(context, "password is empty");
      return;
    }
    _login(context);
  }

  void _login(BuildContext context) async {
    changeState(ViewState.Busy);
    var credentials = AuthCredentials(
        email: emailController.text.trim(),
        password: passwordController.text.trim());

    var result = await authUseCase.login(credentials);
    changeState(ViewState.Idle);
    result.fold((failure) {
      //error
      showFlushBar(context, title: "Login Error", message: failure.message);
    }, (success) {
      //success
      if (success)
        Navigator.pushNamed(context, MainScreen.routeName);
      else
        showFlushBar(context,
            title: "Login Error", message: "something went wrong");
    });
  }
}
