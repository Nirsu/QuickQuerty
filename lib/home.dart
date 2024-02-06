import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_querty/core/themes/extensions/theme_extension.dart';

/// Home page widget.
class HomePage extends StatefulWidget {
  /// Constructor for the home page widget.
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String wordsToType =
      'just place what long many person part know small play';
  int currentIndex = -1;
  String currentWords = '';

  void _onKeyDown(RawKeyEvent event) {
    if (event is RawKeyDownEvent) {
      if (event.logicalKey.keyLabel.toLowerCase() ==
          wordsToType[currentIndex + 1].toLowerCase()) {
        setState(() {
          currentWords += wordsToType[currentIndex + 1];
          currentIndex++;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RawKeyboardListener(
        focusNode: FocusNode(),
        autofocus: true,
        onKey: _onKeyDown,
        child: Center(
          child: Stack(
            children: <Widget>[
              Text(
                wordsToType,
                style: context.theme.textTheme.bodyMedium!.copyWith(
                  color: context.theme.colorScheme.secondary,
                ),
              ),
              Text(currentWords),
            ],
          ),
        ),
      ),
    );
  }
}
