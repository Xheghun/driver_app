import 'package:driver_app/ui/widget/buttons/primary_button.dart';
import 'package:driver_app/ui/widget/layout/base_layout.dart';
import 'package:driver_app/ui/widget/text/elevated_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return BaseLayout(
      backgroundColor: Colors.black.withOpacity(0.016),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedTextField(
              hintText: "Email",
              keyboardType: TextInputType.emailAddress,
            ),
            ElevatedTextField(
              hintText: "Password",
              obscureText: true,
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
            )
          ],
        ),
      ),
    );
  }
}
