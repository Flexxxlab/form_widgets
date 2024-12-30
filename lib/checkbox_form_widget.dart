import 'package:flutter/material.dart';

/// A [FormField] that contains a [CheckboxListTile].
class CheckboxFormField extends FormField<bool> {
  /// Creates a [CheckboxFormField].
  ///
  /// The [initialValue] argument must not be null.

  CheckboxFormField({
    super.key,

    /// The title widget to display next to the checkbox.
    Widget? title,

    /// Called when the form is saved.
    super.onSaved,

    /// Called to validate the form field.
    super.validator,

    /// The initial value of the checkbox.
    bool initialValue = false,

    /// Called when the value of the checkbox changes.
    Function(bool?)? onChanged,
  }) : super(
          initialValue: initialValue,
          builder: (FormFieldState<bool> state) {
            return CheckboxListTile(
              dense: state.hasError,
              title: title,
              value: state.value,
              onChanged: (bool? newValue) {
                if (newValue != null) {
                  state.didChange(newValue);
                  onChanged?.call(newValue);
                }
              },
              subtitle: state.hasError
                  ? Builder(
                      builder: (BuildContext context) => Text(
                        state.errorText ?? "",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.error),
                      ),
                    )
                  : null,
              controlAffinity: ListTileControlAffinity.leading,
            );
          },
        );
}
