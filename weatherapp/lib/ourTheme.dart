import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weatherapp/consts/colors.dart';

class CustomThemes{

  static final lightTheme = ThemeData(
    cardColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Vx.gray800,
    iconTheme: IconThemeData(
      color: Vx.gray600
    ),
  );

  static final darkTheme = ThemeData(
    cardColor: bgColor.withOpacity(0.6),
    scaffoldBackgroundColor: bgColor,
    primaryColor: Colors.white,
    iconTheme: IconThemeData(
      color: Colors.white,
    )
  );

}