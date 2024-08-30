import 'package:flutter/material.dart';
import 'package:note_app/widgets/cutom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
        ),
        const Spacer(),
        CutomIcon(icon: icon),
      ],
    );
  }
}
