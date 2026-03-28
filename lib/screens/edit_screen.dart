import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';
import 'package:note_app/widgets/custome_text_field.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
                  CustomSearchIcon(icon: Icons.check , onPressed: (){

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: Colors.amber,
                        content: Text(
                          'Note Edit Successfully!',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold  ),
                        ),
                      ),
                    );
                    Navigator.pop(context);
                  },
                  ),
                ],
              ),

              const SizedBox(height: 50),

           const CustomTextField(
            text: 'Title',
            maxLines: 2,
           minLines: 1,
           ),

      const SizedBox(height: 16),

      const SizedBox(height: 16),

              const CustomTextField(
                text: 'Content',
                minLines: 5,
                maxLines: 10, // عشان يبقى حجمه كبير زي ما اتفقنا
              ),
            ],
          ),
        ),
      ),
    );
  }
}