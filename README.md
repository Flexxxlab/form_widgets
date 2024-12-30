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
  title: Text('Accept Terms'),
  onSaved: (value) {
    // Save value
  },
  validator: (value) {
    if (value == false) {
      return 'You must accept the terms';
    }
    return null;
  },
  onChanged: (value) {
    // Handle change
  },
),

ClickableTextFormWidget(
  labelText: 'Click me',
  controller: TextEditingController(),
  validator: (value) {
    if (value == null || value.isEmpty) {
      return 'This field cannot be empty';
    }
    return null;
  },
  onPressed: () {
    // Handle button press
  },
),
```

## ScreenShots
![Screenshot_1735602505](https://github.com/user-attachments/assets/2b415162-83d3-471a-b280-289f91ebcecc)
![Screenshot_1735602511](https://github.com/user-attachments/assets/26c76ac2-4f36-4935-8748-06c76bf592b1)
![Screenshot_1735602524](https://github.com/user-attachments/assets/19e8d96b-0ea6-492f-859d-131a7c2e3625)

