import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    this.maxLines = 1,
    this.minLines=1,
    this.onSaved, // ضفنا دي عشان ناخد الداتا بعدين
  });
  final void Function(String?)? onSaved;
  final String text;
  final int? maxLines;
  final int? minLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
        maxLines: maxLines,
        cursorColor: Colors.amber,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(color: Colors.amber),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(Colors.amber),
        ),
      );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
