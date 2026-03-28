import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return NoteItem(
              noteTitle: 'noteTitle', noteBody: "noteBody", date: 'date');
        }
    );

  }
}