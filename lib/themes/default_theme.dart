import 'package:flutter/material.dart';
import 'package:quick_querty/themes/extensions/color_extension.dart';

const Color _primaryTextColor = Color(0xFFFFFFFF);
const Color _secondaryTextColor = Color(0xFF949495);

/// The default theme for the application.
final ThemeData defaultTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF151515),
    primarySwatch: const Color(0xFFFFFFFF).toMaterialColor,
    accentColor: const Color(0xFF949495),
    cardColor: const Color(0xFF202022),
    errorColor: const Color(0xFFFF3C3C),
  ),
  fontFamily: 'Geist',
  textTheme: _defaultTextTheme,
  useMaterial3: true,
);

const TextTheme _defaultTextTheme = TextTheme(
  titleLarge: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: _primaryTextColor,
  ),
  titleMedium: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: _primaryTextColor,
  ),
  titleSmall: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: _primaryTextColor,
  ),
  bodyLarge: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: _primaryTextColor,
  ),
  bodyMedium: TextStyle(
    fontSize: 16,
    color: _primaryTextColor,
  ),
  bodySmall: TextStyle(
    fontSize: 14,
    fontStyle: FontStyle.italic,
    color: _secondaryTextColor,
  ),
);
