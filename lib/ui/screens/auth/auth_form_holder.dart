import 'package:driver_app/app/res/colors.dart';
import 'package:driver_app/ui/screens/auth/login/login_form.dart';
import 'package:driver_app/ui/screens/auth/signup/signup_page.dart';
import 'package:driver_app/ui/widget/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthFormHolder extends StatefulWidget {
  static const routeName = "/routeName";
  @override
  _AuthFormHolderState createState() => _AuthFormHolderState();
}

class _AuthFormHolderState extends State<AuthFormHolder>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  var tabs = [TabItem(title: "SIGN IN"), TabItem(title: "SIGN UP")];

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
            Container(
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(
                  color: Colors.black12,
                  width: 1,
                ),
              )),
              child: TabBar(
                tabs: tabs,
                controller: _tabController,
                unselectedLabelStyle: GoogleFonts.roboto(
                  color: Colors.black12,
                ),
                labelStyle: GoogleFonts.roboto(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                indicatorWeight: 4.0,
                indicatorColor: colorPrimary,
              ),
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
