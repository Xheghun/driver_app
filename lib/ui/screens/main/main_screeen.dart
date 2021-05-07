import 'package:driver_app/ui/widget/layout/base_layout.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static const routeName = "/mainScreen";
  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      body: Center(
        child: Text(
          "Home",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
