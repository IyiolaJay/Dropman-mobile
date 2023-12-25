import 'package:dropman/styles/colors.dart';
import 'package:dropman/styles/typography.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';
import 'inputs.dart';

final ThemeData lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColorWhite,
      secondary: kSecondaryColorBlack,
    ),
    scaffoldBackgroundColor: kPrimaryColorWhite,
    textTheme: TextTheme(
      bodySmall: smallBodyText,
      bodyMedium: bodyText,
      bodyLarge: largeBodyText,
      displaySmall: smallHeader,
      displayMedium: mediumHeader,
      displayLarge: largeHeader,
      labelSmall: subtitleText,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: primaryButtonStyle,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(

      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedItemColor: kSecondaryColorBlack,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      selectedLabelStyle: smallBodyText.copyWith(
        fontSize: 9,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle:  smallBodyText.copyWith(
        fontSize: 9,
        fontWeight: FontWeight.w600,
      ),
    ),
    inputDecorationTheme: inputField);
