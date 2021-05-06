import 'package:driver_app/app/base_viewmodel/base_viewmodel.dart';
import 'package:driver_app/app/res/theme.dart';
import 'package:driver_app/app/route_generator.dart';
import 'package:driver_app/ui/screens/auth/auth_form_holder.dart';
import 'package:driver_app/ui/screens/main/main_screeen.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DriverApp extends StatefulWidget {
  @override
  _DriverAppState createState() => _DriverAppState();
}

class _DriverAppState extends State<DriverApp> {
  void setInitialRoute() async {
    var baseModel = Provider.of<BaseViewModel>(context);
    if (await baseModel.isLoggedIn()) {
      setState(() {
        _initialRoute = MainScreen.routeName;
      });
    }
  }

  String _initialRoute = AuthFormHolder.routeName;

  @override
  void initState() {
    setInitialRoute();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics();

    final Future<FirebaseApp> _firebaseFuture = Firebase.initializeApp();

    return FutureBuilder(
      future: _firebaseFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Driver App',
            navigatorObservers: [
              FirebaseAnalyticsObserver(analytics: firebaseAnalytics)
            ],
            theme: AppTheme.normal(),
            onGenerateRoute: RouteGenerator.generateRoute,
            initialRoute: _initialRoute,
          );
        }

        if (snapshot.hasError) {
          //show error
        }

        //show loading
      },
    );
  }
}
