import 'package:flutter/material.dart';

class CutomTextFormField extends StatelessWidget {
  const CutomTextFormField(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
      this.controller,
      this.onChanged});
  final String hintText;
  final int maxLines;
  final Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.purple,
      maxLines: maxLines,
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.white,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: Colors.white,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.purple, width: 2)),
          hintText: hintText,
          hintStyle:
              TextStyle(color: Colors.grey[600], fontFamily: 'Montserrat'),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 16)),
    );
  }
}
