import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      SizedBox(height: 60,) ,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text('Note App' , style: TextStyle(fontSize: 30 ,
                    fontWeight: FontWeight.bold , color: Colors.white) ),
              Spacer(),
              CustomSearchIcon()
            ],
          ),
        ),
      ],
    );
  }
}
