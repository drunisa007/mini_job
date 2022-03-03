import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_job/core/constants/constant_colors.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor:
          isDarkTheme ? kDarkBackgroundColour : kLightBackgroundColour,
      textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: isDarkTheme ? Colors.white : Colors.black,
          displayColor: isDarkTheme ? Colors.white : Colors.black),
      // textTheme: const TextTheme().copyWith(
      //   bodyText1: const TextStyle(),
      //   bodyText2: const TextStyle(),
      //   caption:  const  TextStyle(),
      //   subtitle1: const TextStyle(),
      //   subtitle2:  const TextStyle()
      // ).apply(
      //   bodyColor: isDarkTheme? Colors.white:Colors.black,
      //   displayColor: isDarkTheme? Colors.white:Colors.black
      // ),
      colorScheme: Theme.of(context).colorScheme.copyWith(
          secondary: isDarkTheme ? kDarkBackgroundShadowColour : kLightBackgroundShadowColour,/// kDarkBackground shadow color
          secondaryVariant: isDarkTheme ? kOutline : kLightOutline, ///k outline
          primary: isDarkTheme ? Color(0xff111216) : Color(0xff5a5a5a),
          primaryVariant: isDarkTheme? Color(0xff454a56): Color(0xffffffff),
          onPrimary: kTextColor,
          onSecondary: isDarkTheme ? Colors.white : Colors.black),
    );
  }
}
