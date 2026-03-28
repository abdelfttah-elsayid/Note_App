import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: NotesViewBody(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {

          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),

            ),
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
                },
        backgroundColor: Colors.black,
        child: const Icon(Icons.add , size: 36 , color: Colors.amber,),
      ),
    );
  }
}
