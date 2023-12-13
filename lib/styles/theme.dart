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
  textTheme: TextTheme(
    bodySmall: smallBodyText,
    bodyMedium: bodyText,
    bodyLarge: largeBodyText,
    displaySmall: smallHeader,
    displayMedium: mediumHeader,
    displayLarge: largeHeader,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: primaryButtonStyle,
  ),
  inputDecorationTheme: inputField

);