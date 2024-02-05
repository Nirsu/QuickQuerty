import 'package:flutter/material.dart';
import 'package:quick_querty/core/themes/default_theme.dart';
import 'package:quick_querty/core/themes/extensions/theme_extension.dart';

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
      title: 'Flutter Demo',
      theme: defaultTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/// Basic home page widget.
class MyHomePage extends StatefulWidget {
  /// Constructor for the home page widget.
  const MyHomePage({
    required this.title,
    super.key,
  });

  /// The title of the home page.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: Container(
            color: context.theme.colorScheme.secondary,
            height: 1,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            if (_counter >= 1)
              Text(
                'This is cool !',
                style: context.theme.textTheme.bodySmall,
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
