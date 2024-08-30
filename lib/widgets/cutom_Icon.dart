import 'package:flutter/material.dart';

class CutomIcon extends StatelessWidget {
  const CutomIcon({super.key, required this.icon, this.onTap});
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(0.05),
        ),
        child: Center(
          child: Icon(
            icon,
            size: 25,
          ),
        ),
      ),
    );
  }
}
