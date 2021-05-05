import 'package:driver_app/ui/screens/auth/login/login_form.dart';
import 'package:driver_app/ui/screens/auth/signup/signup_page.dart';
import 'package:flutter/material.dart';

class AuthFormHolder extends StatefulWidget {
  static const routeName = "/routeName";
  @override
  _AuthFormHolderState createState() => _AuthFormHolderState();
}

class _AuthFormHolderState extends State<AuthFormHolder>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  var tabs = [Text("SIGN IN"), Text("SIGN UP")];

  @override
  void initState() {
    _tabController = TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var tabPages = [LoginPage(), SignUpPage()];
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            TabBar(
              tabs: tabs,
              controller: _tabController,
            ),
            Expanded(
              child: TabBarView(
                children: tabPages,
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
