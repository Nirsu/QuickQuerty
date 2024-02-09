/// [CustomButtonBarItem] is class who represent an item of the [CustomButtonBar].
class CustomButtonBarItem {
  /// Constructor for the custom button bar item.
  const CustomButtonBarItem({
    required this.label,
    required this.onPressed,
  });

  /// The label of the button.
  final String label;

  /// The function to call when the button is pressed.
  final void Function() onPressed;
}
