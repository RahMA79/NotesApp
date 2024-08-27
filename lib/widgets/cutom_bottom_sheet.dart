import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_textfield.dart';

class CutomBottomSheet extends StatelessWidget {
  const CutomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CutomTextFormField(hintText: 'title'),
          const SizedBox(
            height: 16,
          ),
          CutomTextFormField(
            hintText: 'Content',
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
