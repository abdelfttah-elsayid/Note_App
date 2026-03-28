import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  final String noteTitle;
  final String noteBody;
  final String date;

  const NoteItem({
    super.key,
    required this.noteTitle,
    required this.noteBody,
    required this.date
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              noteTitle,
              style: const TextStyle(
                fontSize: 24, // حجم متوسط وأشيك
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'MontserratBold'// وزن الخط
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                noteBody,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'MontserratSemi',
                  color: Colors.black.withOpacity(0.7), // شفافية أعلى للوصف
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 22,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24, top: 8),
            child: Text(
              date,
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}