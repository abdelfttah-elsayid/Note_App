import 'package:flutter/material.dart';
import 'package:note_app/widgets/custome_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // العنوان مع السطر اللي تحته
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  // عشان يخلي النص والسطر في النص بالظبط
                  mainAxisSize: MainAxisSize.min,
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

                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      height: 3,
                      width: 115,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),
            const CustomTextField(text: 'Title' ,
              maxLines: null,


            ),

            const SizedBox(height: 16),

            const CustomTextField(
              text: 'Content',
              maxLines: null,
            ),
          ],      ),
      ),
      
      
    );
  }
}
