
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  final String noteTitle;
  final String noteBody;
  final String date;

  const NoteItem({super.key, required this.noteTitle, required this.noteBody, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10), // زيادة الـ padding لراحة العين
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min, // 2. دي بتخلي الـ Column ياخد أقل مساحة ممكنة
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  noteTitle,
                  style: const TextStyle(
                    fontSize: 28,
                    fontFamily: "MontserratBold",
                    color: Colors.black,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                icon: const FaIcon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),              ),
            ],
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              noteBody,
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'MontserratSemi',
                color: Colors.black.withOpacity(0.8),
              ),
            ),
          ),
          const SizedBox(height: 16), // مسافة قبل التاريخ
          Text(
            date,
            style:  TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}