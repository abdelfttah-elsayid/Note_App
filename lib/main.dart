import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/screens/home_screen.dart';

void main()async{

   await Hive.initFlutter();
   await Hive.openBox(kNotesBox);
  runApp(const NoteApp());
}
class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
        ),
        home: const HomeScreen(),
    );

  }
}
