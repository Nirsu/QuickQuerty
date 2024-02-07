import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:quick_querty/home.dart';
import 'package:quick_querty/http/http_client.dart';
import 'package:quick_querty/themes/default_theme.dart';

/// The global instance of the service locator.
final GetIt getIt = GetIt.instance;

void main() {
  getIt.registerSingleton<Client>(httpClient());

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
