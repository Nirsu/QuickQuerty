import 'package:collection/collection.dart';

import 'package:flutter/material.dart';
import 'package:quick_querty/themes/extensions/theme_extension.dart';
import 'package:quick_querty/widgets/button_bar/custom_button_bar_item.dart';

/// [CustomButtonBar] widget.
///
/// This widget is used to select the game mode.
class CustomButtonBar extends StatelessWidget {
  /// Constructor for the [CustomButtonBar] widget.
  const CustomButtonBar({
    required this.items,
    this.defaultSelectedIndex = 0,
    super.key,
  }) : assert(
          defaultSelectedIndex >= 0 && defaultSelectedIndex < items.length,
          'The defaultSelectedIndex must be between 0 and ${items.length - 1}.',
        );

  /// The default selected index.
  final int defaultSelectedIndex;

  /// The items of the button bar.
  final List<CustomButtonBarItem> items;

  final double _borderRadius = 6;
  final double _padding = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(_borderRadius),
        color: context.theme.cardColor,
      ),
      padding: EdgeInsets.all(_padding),
      child: OverflowBar(
        spacing: 5,
        children: items
            .mapIndexed(
              (
                int index,
                CustomButtonBarItem item,
              ) =>
                  TextButton(
                onPressed: item.onPressed,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    index == defaultSelectedIndex
                        ? context.theme.colorScheme.background
                        : context.theme.cardColor,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(_borderRadius / 2),
                    ),
                  ),
                ),
                child: Text(
                  item.label,
                  style: context.theme.textTheme.bodyMedium,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
