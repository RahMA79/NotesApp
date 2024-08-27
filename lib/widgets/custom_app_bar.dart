import 'package:flutter/material.dart';
import 'package:note_app/widgets/cutom_search_Icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Notes',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
        ),
        Spacer(),
        CutomSearchIcon(),
      ],
    );
  }
}
