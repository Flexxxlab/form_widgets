```dart
import 'package:form_widgets/checkbox_form_widget.dart';
import 'package:form_widgets/clickable_text_form_widget.dart';


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