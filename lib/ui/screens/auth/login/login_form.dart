import 'package:driver_app/app/locator.dart';
import 'package:driver_app/ui/screens/auth/login/login_viewmodel.dart';
import 'package:driver_app/ui/widget/buttons/primary_button.dart';
import 'package:driver_app/ui/widget/layout/base_layout.dart';
import 'package:driver_app/ui/widget/text/elevated_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Consumer<LoginViewModel>(
      builder: (context, model, child) {
        return BaseLayout(
          backgroundColor: Colors.black.withOpacity(0.016),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ElevatedTextField(
                  hintText: "Email",
                  controller: model.emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                ElevatedTextField(
                  hintText: "Password",
                  obscureText: true,
                  controller: model.passwordController,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "FORGOT PASSWORD",
                        style: theme.textTheme.subtitle2,
                      )),
                ),
                PrimaryButton(
                  text: "CONTINUE",
                  onPressed: () => model.validateInput(context),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
