import 'package:driver_app/ui/widget/buttons/primary_button.dart';
import 'package:driver_app/ui/widget/layout/base_layout.dart';
import 'package:driver_app/ui/widget/text/elevated_textfield.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return BaseLayout(
      backgroundColor: Colors.black.withOpacity(0.016),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedTextField(
              hintText: "Fullname",
            ),
            ElevatedTextField(
              hintText: "Email",
              keyboardType: TextInputType.emailAddress,
            ),
            ElevatedTextField(
              hintText: "Password",
              obscureText: true,
            ),
            ElevatedTextField(
              hintText: "Confirm Password",
              obscureText: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: PrimaryButton(
                text: "CONTINUE",
              ),
            )
          ],
        ),
      ),
    );
  }
}
