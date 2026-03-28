import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: NotesViewBody(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
    );
  }
}
