import 'package:flutter/material.dart';
import 'package:note_app/widgets/cutom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onTap});
  final String title;
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
        ),
        const Spacer(),
        CutomIcon(
          icon: icon,
          onTap: onTap,
        ),
      ],
    );
  }
}
