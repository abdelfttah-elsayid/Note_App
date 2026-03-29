import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  // 1. تعريف المفتاح الخاص بالـ Form
  final GlobalKey<FormState> formKey = GlobalKey();

  // 2. حالة الـ Validation (بتبدأ مطفية)
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form( // 3. تغليف المحتوى بـ Form
            key: formKey,
            autovalidateMode: autovalidateMode,
            child: Column(
              children: [
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Edit Note',
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    CustomSearchIcon(
                      icon: Icons.check,
                      onPressed: () {
                        // 4. عمل Validation عند الضغط على الأيقونة
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              backgroundColor: Colors.amber,
                              content: Text(
                                'Note Edited Successfully!',
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                          Navigator.pop(context);
                        } else {
                          // 5. لو فيه مشكلة، أظهر اللون الأحمر فوراً
                          setState(() {
                            autovalidateMode = AutovalidateMode.always;
                          });
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 50),

                // حقل العنوان
                CustomTextField(
                  onSaved: (value) {
                    title = value;
                  },
                  text: 'Title',
                  maxLines: 1,
                ),

                const SizedBox(height: 16),

                CustomTextField(
                  onSaved: (value) {
                    content = value;
                  },
                  text: 'Content',
                  minLines: 5,
                  maxLines: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}