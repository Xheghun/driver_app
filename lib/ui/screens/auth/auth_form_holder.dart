import 'package:driver_app/app/locator.dart';
import 'package:driver_app/app/res/colors.dart';
import 'package:driver_app/ui/screens/auth/login/login_form.dart';
import 'package:driver_app/ui/screens/auth/login/login_viewmodel.dart';
import 'package:driver_app/ui/screens/auth/signup/sign_up_viewmodel.dart';
import 'package:driver_app/ui/screens/auth/signup/signup_page.dart';
import 'package:driver_app/ui/widget/dialog/loading_view.dart';
import 'package:driver_app/ui/widget/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => LoginViewModel(
                  authUseCase: locator(),
                )),
        ChangeNotifierProvider(
            create: (_) => SignUpViewModel(authUseCase: locator()))
      ],
      child: Builder(builder: (context) {
        var loginModel = Provider.of<LoginViewModel>(context);
        var signpModel = Provider.of<SignUpViewModel>(context);

        return Scaffold(
          body: Stack(
            children: [
              Scaffold(
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
              ),
              Visibility(
                  visible: (loginModel.isBusy() || signpModel.isBusy()),
                  child: LoadingView())
            ],
          ),
        );
      }),
    );
  }
}
