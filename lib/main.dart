import 'package:driver_app/app/base_viewmodel/base_viewmodel.dart';
import 'package:driver_app/app/driver_app.dart';
import 'package:driver_app/app/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(ChangeNotifierProvider(
      create: (_) => BaseViewModel(authUseCase: locator()),
      child: DriverApp()));
}
