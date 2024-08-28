import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_note.dart';

class CutomBottomSheet extends StatelessWidget {
  const CutomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNote(),
      ),
    );
  }
}
