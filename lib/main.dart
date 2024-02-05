import 'package:flutter/material.dart';
import 'package:quick_querty/core/themes/default_theme.dart';
import 'package:quick_querty/home.dart';

void main() {
  runApp(const QuickQuerty());
}

/// The main application widget.
class QuickQuerty extends StatelessWidget {
  /// Constructor for the main application widget.
  const QuickQuerty({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quick Querty',
      theme: defaultTheme,
      home: const HomePage(),
    );
  }
}
