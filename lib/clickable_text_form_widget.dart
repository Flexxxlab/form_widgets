import 'package:flutter/material.dart';

/// A [Widget] that contains a [TextFormField] that is clickable.
class ClickableTextFormWidget extends StatefulWidget {
  /// The label text to display inside the [TextFormField].
  final String? labelText;

  /// The controller for the [TextFormField].
  final TextEditingController? controller;

  /// The validator for the [TextFormField].
  final String? Function(String?)? validator;

  /// The callback function to be called when the [TextButton] is pressed.
  final VoidCallback? onPressed;

  /// Creates a [ClickableTextFormWidget].
  const ClickableTextFormWidget({
    super.key,
    this.labelText,
    this.controller,
    this.validator,
    this.onPressed,
  });

  @override
  State<ClickableTextFormWidget> createState() =>
      _ClickableTextFormWidgetState();
}

class _ClickableTextFormWidgetState extends State<ClickableTextFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      TextFormField(
        decoration: InputDecoration(
          labelText: widget.labelText,
        ),
        readOnly: true,
        controller: widget.controller,
        validator: widget.validator,
      ),
      Positioned.fill(
          child: TextButton(onPressed: widget.onPressed, child: Text(''))),
    ]);
  }
}
