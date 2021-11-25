import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();

  static const darkPrimary = Colors.white;
  static const darkPrimaryDark = Colors.brown;
  static const darkSecondary = Colors.brown;
  static const darkBackground = Colors.black87;
  static const darkSurface = Color(0xFF151515);
  static const darkError = Colors.brown;
  static const darkPrimaryText = Color(0xFFCFCFCF);
  static const darkSecondaryText = Color(0xFF535353);
  static const darkShadow = Color(0x0A000000);
  static const darkOverlay = Color(0x7A000000);
  static const darkStar = Color(0xA2FFEE04);

  static const lightPrimary = Colors.brown;
  static const lightPrimaryDark = Colors.brown;
  static const lightSecondary = Colors.brown;
  static const lightBackground = Colors.white;
  static const lightSurface = Colors.white;
  static const lightError = Colors.red;
  static const lightPrimaryText = Colors.white;
  static const lightSecondaryText = Colors.black54;
  static const lightShadow = Color(0x0A000000);
  static const lightOverlay = Colors.white70;
  static const lightStar = Color(0xA2FFEE04);

  static ColorScheme darkColorScheme = const ColorScheme(
    primary: darkPrimary,
    primaryVariant: darkPrimaryDark,
    secondary: darkSecondary,
    secondaryVariant: darkSecondary,
    background: darkBackground,
    surface: darkSurface,
    onBackground: darkPrimaryText,
    error: darkError,
    onError: darkPrimaryText,
    onPrimary: darkPrimaryText,
    onSecondary: darkPrimaryText,
    onSurface: darkPrimaryText,
    brightness: Brightness.dark,
  );

  static ColorScheme lightColorScheme = const ColorScheme(
    primary: lightPrimary,
    primaryVariant: lightPrimaryDark,
    secondary: lightSecondary,
    secondaryVariant: lightSecondary,
    background: lightBackground,
    surface: lightSurface,
    onBackground: lightPrimaryText,
    error: lightError,
    onError: lightPrimaryText,
    onPrimary: lightPrimaryText,
    onSecondary: lightPrimaryText,
    onSurface: lightPrimaryText,
    brightness: Brightness.light,
  );
}