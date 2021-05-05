import 'package:flutter/material.dart';

class BaseLayout extends StatelessWidget {
  final EdgeInsets padding;
  final Widget body;
  final bool resizeToAvoidBottomInsets;

  const BaseLayout(
      {Key key, this.padding, this.resizeToAvoidBottomInsets, this.body})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var textScale = mediaQuery.textScaleFactor.clamp(0.7, 0.9);

    return MediaQuery(
      data: mediaQuery.copyWith(textScaleFactor: textScale),
      child: Scaffold(
        body: Container(
          child: body,
          padding: padding ??
              EdgeInsets.symmetric(
                  horizontal: mediaQuery.size.width * 0.05, vertical: 15),
        ),
      ),
    );
  }
}
