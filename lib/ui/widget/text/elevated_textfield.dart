import 'package:driver_app/app/res/style.dart';
import 'package:flutter/material.dart';

class ElevatedTextField extends StatelessWidget {
  final double elevation;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController controller;

  const ElevatedTextField(
      {Key key,
      this.elevation = 1,
      this.hintText = "Text",
      this.controller,
      this.keyboardType,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Material(
        type: MaterialType.card,
        borderRadius: borderRadius12,
        shadowColor: Colors.black38,
        elevation: elevation,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: theme.textTheme.subtitle2,
            ),
          ),
        ),
      ),
    );
  }
}
