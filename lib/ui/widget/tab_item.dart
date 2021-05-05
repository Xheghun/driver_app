import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String title;

  const TabItem({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(title),
    );
  }
}
