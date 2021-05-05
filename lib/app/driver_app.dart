import 'package:driver_app/app/res/theme.dart';
import 'package:driver_app/app/route_generator.dart';
import 'package:driver_app/ui/screens/auth/auth_form_holder.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';

class DriverApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics();
    return MaterialApp(
      title: 'Driver App',
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: firebaseAnalytics)
      ],
      theme: AppTheme.normal(),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: AuthFormHolder.routeName,
    );
  }
}
