import 'package:driver_app/app/res/colors.dart';
import 'package:driver_app/app/res/style.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const PrimaryButton({Key key, this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed ?? () {},
          style: ElevatedButton.styleFrom(
              primary: colorPrimary,
              shape: RoundedRectangleBorder(borderRadius: borderRadius12)),
          child: Text(
            text,
          )),
    );
  }
}
