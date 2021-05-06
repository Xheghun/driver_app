import 'package:driver_app/app/locator.dart';
import 'package:driver_app/ui/screens/auth/signup/sign_up_viewmodel.dart';
import 'package:driver_app/ui/widget/buttons/primary_button.dart';
import 'package:driver_app/ui/widget/layout/base_layout.dart';
import 'package:driver_app/ui/widget/text/elevated_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpViewModel>(
      builder: (context, model, child) {
        return BaseLayout(
          backgroundColor: Colors.black.withOpacity(0.016),
          body: SingleChildScrollView(
            child: Column(
              children: [
                ElevatedTextField(
                    hintText: "Fullname", controller: model.fullnameController),
                ElevatedTextField(
                  hintText: "Email",
                  controller: model.emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                ElevatedTextField(
                  hintText: "Password",
                  controller: model.passwordController,
                  obscureText: true,
                ),
                ElevatedTextField(
                  hintText: "Confirm Password",
                  obscureText: true,
                  controller: model.confirmPasswordController,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: PrimaryButton(
                    text: "CONTINUE",
                    onPressed: () => model.validateInput(context),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
