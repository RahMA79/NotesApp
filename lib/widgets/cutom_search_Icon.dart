import 'package:flutter/material.dart';

class CutomSearchIcon extends StatelessWidget {
  const CutomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.05),
      ),
      child: const Center(
        child: Icon(
          Icons.search,
          size: 25,
        ),
      ),
    );
  }
}
