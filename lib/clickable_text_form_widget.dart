import 'package:flutter/material.dart';

class ClickableTextFormWidget extends StatefulWidget {
  final String? labelText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function()? onPressed;
  const ClickableTextFormWidget(
      {super.key,
      this.labelText,
      this.controller,
      this.validator,
      this.onPressed});

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
