import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quick_querty/quote/quote_service.dart';
import 'package:quick_querty/themes/extensions/theme_extension.dart';
import 'package:quick_querty/widgets/button_bar/custom_button_bar.dart';
import 'package:quick_querty/widgets/button_bar/custom_button_bar_item.dart';

/// Home page widget.
class HomePage extends StatefulWidget {
  /// Constructor for the home page widget.
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final String _wordsToType;

  List<TextSpan> typedWords = <TextSpan>[];
  int _currentIndex = -1;
  bool _isLoading = true;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    unawaited(_onInit());
  }

  Future<void> _onInit() async {
    try {
      _wordsToType = await QuoteService().getRandomQuote();

      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
        _hasError = true;
      });
    }
  }

  void _onKeyDown(RawKeyEvent event) {
    if (event is RawKeyDownEvent && _currentIndex + 1 < _wordsToType.length) {
      final String char = event.logicalKey.keyLabel.toLowerCase();
      final RegExp letterNumberSpaceRegExp = RegExp(r'^[a-zA-Z0-9 ]$');

      if (event.logicalKey == LogicalKeyboardKey.backspace &&
          typedWords.isNotEmpty) {
        setState(() {
          typedWords.removeLast();
          _currentIndex--;
        });

        return;
      }

      // Check if the character is a letter, number, or space
      if (!letterNumberSpaceRegExp.hasMatch(char)) return;

      if (char == _wordsToType[_currentIndex + 1].toLowerCase()) {
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
          _currentIndex++;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _hasError
              ? const Center(child: Text('Error: Please reload the app.'))
              : RawKeyboardListener(
                  focusNode: FocusNode(),
                  autofocus: true,
                  onKey: _onKeyDown,
                  child: Center(
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 64),
                            child: CustomButtonBar(
                              items: <CustomButtonBarItem>[
                                CustomButtonBarItem(
                                  label: 'quote',
                                  onPressed: () {},
                                ),
                                CustomButtonBarItem(
                                  label: 'word',
                                  onPressed: () {},
                                ),
                                CustomButtonBarItem(
                                  label: 'time',
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text(
                          _wordsToType,
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
