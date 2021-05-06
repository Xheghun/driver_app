import 'dart:ui';
import 'package:driver_app/app/res/style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingView extends StatelessWidget {
  final String text;

  const LoadingView({Key key, this.text = "Please wait..."}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withOpacity(0.2),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 2.5,
          sigmaY: 2.5,
        ),
        child: Center(
          child: Container(
            width: 120,
            height: 120,
            child: ClipRRect(
              borderRadius: borderRadius12,
              child: Material(
                color: Colors.white,
                elevation: 4,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Lottie.asset("assets/raw/loading.json",
                          width: 80, height: 80),
                    ),
                    Text(
                      text,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
