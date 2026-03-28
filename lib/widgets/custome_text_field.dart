import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    this.maxLines = 1, // افتراضي سطر واحد للعنوان
  });

  final String text;
  final int? maxLines; // لو بعتناه null هيوسع للمالانهاية

  @override
  Widget build(BuildContext context) {
    return TextField(

      maxLines: maxLines,
      cursorColor: Colors.amber,
      style: const TextStyle(color: Colors.white), // لون الكتابة
      decoration: InputDecoration(
        hintText: text,
        hintStyle: const TextStyle(color: Colors.amber),
        // شكل الحدود الافتراضي
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