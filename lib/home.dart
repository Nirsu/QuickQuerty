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
  List<TextSpan> typedWords = <TextSpan>[];

  void _onKeyDown(RawKeyEvent event) {
    if (event is RawKeyDownEvent && currentIndex + 1 < wordsToType.length) {
      final String char = event.logicalKey.keyLabel.toLowerCase();
      final RegExp letterNumberSpaceRegExp = RegExp(r'^[a-zA-Z0-9 ]$');

      if (event.logicalKey == LogicalKeyboardKey.backspace &&
          typedWords.isNotEmpty) {
        setState(() {
          typedWords.removeLast();
          currentIndex--;
        });

        return;
      }

      // Check if the character is a letter, number, or space
      if (!letterNumberSpaceRegExp.hasMatch(char)) return;

      if (char == wordsToType[currentIndex + 1].toLowerCase()) {
        // Correct letter
        typedWords.add(
          TextSpan(
            text: char,
            style: context.theme.textTheme.bodyMedium, // Correct letter color
          ),
        );
      } else {
        // Incorrect letter
        typedWords.add(
          TextSpan(
            text: char,
            style: context.theme.textTheme.bodyMedium!.copyWith(
              color: context.theme.colorScheme.error,
            ),
          ),
        );
      }

      setState(
        () {
          currentIndex++;
        },
      );
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
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    ...typedWords,
                  ],
                  style: context.theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
