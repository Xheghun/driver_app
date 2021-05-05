import 'package:driver_app/app/res/theme.dart';
import 'package:driver_app/app/route_generator.dart';
import 'package:flutter/material.dart';

class DriverApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Driver App',
      theme: AppTheme.normal(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}