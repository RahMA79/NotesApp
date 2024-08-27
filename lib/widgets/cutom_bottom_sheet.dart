import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_textfield.dart';
import 'package:note_app/widgets/cutom_add_note_button.dart';

class CutomBottomSheet extends StatelessWidget {
  const CutomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CutomTextFormField(hintText: 'title'),
            SizedBox(
              height: 16,
            ),
            CutomTextFormField(
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 75,
            ),
            CustomButton(
              text: 'Add Note',
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
