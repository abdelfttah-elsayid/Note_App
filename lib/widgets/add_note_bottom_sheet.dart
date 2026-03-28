import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custome_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      // Padding عشان نرفع المحتوى فوق الكيبورد
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 32,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // الجزء الخاص بالعنوان "Add Note" والسطر اللي تحته
            Column(
              children: [
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
              ],
            ),
            const SizedBox(height: 40),
            SizedBox(

              child: const CustomTextField(
                text: 'Title',
                maxLines: 2,
                minLines: 1,
              ),
            ),
            const SizedBox(height: 16),

            const CustomTextField(
              text: 'Content',
              maxLines: 5,
              minLines: 1,
            ),

            const SizedBox(height: 32),

            const CustomButton(),
          ],
        ),
      ),
    );
  }
}
