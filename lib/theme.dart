import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

// Our light/Primary Theme
ThemeData themeData(BuildContext context) {
  return ThemeData(
      appBarTheme: appBarTheme,
      primaryColor: kPrimaryColor,
      hintColor: kAccentLightColor,
      scaffoldBackgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: kBodyTextColorLight),
      primaryIconTheme: const IconThemeData(color: kPrimaryIconLightColor),
      textTheme: GoogleFonts.latoTextTheme().copyWith(
        bodyLarge: const TextStyle(color: kBodyTextColorLight),
        bodyMedium: const TextStyle(color: kBodyTextColorLight),
        headlineMedium:
            const TextStyle(color: kTitleTextLightColor, fontSize: 32),
        displayLarge:
            const TextStyle(color: kTitleTextLightColor, fontSize: 80),
      ),
      colorScheme: const ColorScheme.light(
          secondary: kSecondaryLightColor, background: Colors.white
          // on light theme surface = Colors.white by default
          )
      // .copyWith(secondary: kAccentLightColor)
      // .copyWith(background: Colors.white),
      );
}

// Dark Them
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      primaryColor: kPrimaryColor,
      hintColor: kAccentDarkColor,
      scaffoldBackgroundColor: const Color(0xFF0D0C0E),
      appBarTheme: appBarTheme,
      iconTheme: const IconThemeData(color: kBodyTextColorDark),
      primaryIconTheme: const IconThemeData(color: kPrimaryIconDarkColor),
      textTheme: GoogleFonts.latoTextTheme().copyWith(
        bodyLarge: const TextStyle(color: kBodyTextColorDark),
        bodyMedium: const TextStyle(color: kBodyTextColorDark),
        headlineMedium:
            const TextStyle(color: kTitleTextDarkColor, fontSize: 32),
        displayLarge: const TextStyle(color: kTitleTextDarkColor, fontSize: 80),
      ),
      colorScheme: const ColorScheme.light(
          secondary: kSecondaryDarkColor,
          surface: kSurfaceDarkColor,
          background: kBackgroundDarkColor)
      );
}

AppBarTheme appBarTheme =
    const AppBarTheme(color: Colors.transparent, elevation: 0);
