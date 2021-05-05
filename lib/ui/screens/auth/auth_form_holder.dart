import 'package:flutter/material.dart';

class AuthFormHolder extends StatefulWidget {
  static const routeName = "/routeName";
  @override
  _AuthFormHolderState createState() => _AuthFormHolderState();
}

class _AuthFormHolderState extends State<AuthFormHolder>
    with TickerProviderStateMixin {
  TabController _controller;
  var tabs = [Text("SIGN IN"), Text("SIGN UP")];

  @override
  void initState() {
    _controller = TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(tabs: tabs),
        ],
      ),
    );
  }
}
