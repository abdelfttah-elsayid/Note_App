import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        // عشان الـ BottomSheet تاخد مساحة على قد المحتوى بس
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          // الهيدر
          const Text(
            'Add Note',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 24,
              fontFamily: 'MontserratSemi',
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 3,
            width: 115,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          const SizedBox(height: 40),

          // حقل العنوان
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            text: 'Title',
            maxLines: 1,
          ),

          const SizedBox(height: 16),

          // حقل المحتوى
          CustomTextField(
            onSaved: (value) {
              content = value;
            },
            text: 'Content',
            maxLines: 5,
            minLines: 3,
          ),

          const SizedBox(height: 32),

          // زرار الحفظ
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                print('Title: $title, Content: $content');

                Navigator.pop(context);
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}