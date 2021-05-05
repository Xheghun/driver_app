import 'package:flutter/material.dart';

class AuthFormHolder extends StatefulWidget {


  @override
  _AuthFormHolderState createState() => _AuthFormHolderState();
}

class _AuthFormHolderState extends State<AuthFormHolder> {


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(tabs: tabs);
        ],
      ),
    );
  }
}
