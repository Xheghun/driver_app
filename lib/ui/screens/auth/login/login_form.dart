import 'package:driver_app/ui/widget/layout/base_layout.dart';
import 'package:driver_app/ui/widget/text/elevated_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedTextField(),
          ],
        ),
      ),
    );
  }
}
