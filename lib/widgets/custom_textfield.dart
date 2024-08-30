import 'package:flutter/material.dart';

class CutomTextFormField extends StatelessWidget {
  const CutomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.controller,
    this.onSaved,
    this.onChanged,
  });
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final nullVariable = null;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xff0077b6),
      maxLines: maxLines,
      controller: controller,
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        if (value?.isEmpty ?? nullVariable) {
          return 'Field is required';
        } else {
          return null;
        }
      },
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
              borderSide: const BorderSide(color: Color(0xff0077b6), width: 2)),
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Color(0xff0077b6), fontFamily: 'Montserrat'),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20, horizontal: 16)),
    );
  }
}
