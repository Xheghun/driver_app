import 'package:driver_app/app/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData normal() {
    return ThemeData(
      primaryColor: colorPrimary,
      primaryColorDark: colorPrimaryDark,
      primaryColorLight: colorPrimaryLight,
      fontFamily: GoogleFonts.roboto().fontFamily,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(color: Colors.white, elevation: 0),
      textTheme: TextTheme(
        subtitle2: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: colorHintText,
        ),
      ),
    );
  }
}
