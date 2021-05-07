import 'package:driver_app/ui/screens/auth/auth_form_holder.dart';
import 'package:driver_app/ui/screens/main/main_screeen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case (AuthFormHolder.routeName):
        return MaterialPageRoute(
            builder: (_) => AuthFormHolder(),
            settings: RouteSettings(name: AuthFormHolder.routeName));
      case MainScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => MainScreen(),
            settings: RouteSettings(name: MainScreen.routeName));
      default:
        return null;
    }
  }
}
