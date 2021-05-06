import 'package:driver_app/app/driver_app.dart';
import 'package:driver_app/app/locator.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(DriverApp());
}
