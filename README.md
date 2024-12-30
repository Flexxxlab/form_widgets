# Form Widgets

This package provides custom form widgets for Flutter applications.

## Widgets

### CheckboxFormField

A `FormField` that contains a `CheckboxListTile`.

#### Properties

- `title`: The title widget to display next to the checkbox.
- `onSaved`: Called when the form is saved.
- `validator`: Called to validate the form field.
- `initialValue`: The initial value of the checkbox.
- `onChanged`: Called when the value of the checkbox changes.

### ClickableTextFormWidget

A custom widget that combines a `TextFormField` with a `TextButton`.

#### Properties

- `labelText`: The label text to display inside the `TextFormField`.
- `controller`: The controller for the `TextFormField`.
- `validator`: The validator for the `TextFormField`.
- `onPressed`: The callback function to be called when the `TextButton` is pressed.

## Usage

To use these widgets, import the package and include them in your form:

```dart
import 'package:form_widgets/checkbox_form_widget.dart';
import 'package:form_widgets/clickable_text_form_widget.dart';

...

CheckboxFormField(
  initialValue: false,
  onChanged: (value) {},
  title: const Text('Terms and Conditions'),
  validator: (value) {
    if (value == null || value == false) {
      return 'You must accept the terms';
    }
    return null;
  },
),

DateTime? _selectedDateTime;
final _dateController = TextEditingController();
ClickableTextFormWidget(
  labelText: 'Date',
  controller: _dateController,
  validator: (value) =>
      value == null || value.isEmpty ? 'Please select a date' : null,
  onPressed: () {
    showDatePicker(
      context: context,
      initialDate: _selectedDateTime ?? DateTime.now(),
      firstDate: _selectedDateTime ?? DateTime.now(),
      lastDate: DateTime(2100),
    ).then((value) {
      if (value != null) {
        setState(() {
          _selectedDateTime = value;
          _dateController.text =
              '${value.day}/${value.month}/${value.year}';
        });
      }
    });
  },
);
```

## ScreenShots
![Screenshot_1735602505](https://github.com/user-attachments/assets/e5de47a4-a8ff-403e-949d-e563a43cee63)
![Screenshot_1735602511](https://github.com/user-attachments/assets/c83c3847-2fd2-4357-b502-2eb149069ffd)
![Screenshot_1735602524](https://github.com/user-attachments/assets/2418ae63-298e-4dec-bbfb-b91c120beb79)


