import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return NoteItem(
                noteTitle: 'noteTitle', noteBody: "noteBody", date: 'date');
          }
      ),
    );

  }
}