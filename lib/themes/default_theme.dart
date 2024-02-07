import 'package:flutter/material.dart';
import 'package:quick_querty/themes/extensions/color_extension.dart';

const Color _primaryTextColor = Color(0xFFfafafa);
const Color _secondaryTextColor = Color(0xFFa1a1aa);

/// The default theme for the application.
final ThemeData defaultTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.dark,
    backgroundColor: const Color(0xFF09090b),
    primarySwatch: const Color(0xFFfafafa).toMaterialColor,
    accentColor: const Color(0xFF27272a),
    cardColor: const Color(0xFF09090b).withOpacity(0.6),
    errorColor: const Color(0xFFe11d48),
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
