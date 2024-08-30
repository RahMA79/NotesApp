import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/FetchNotes/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_textfield.dart';
import 'package:note_app/widgets/edit_note_colorsListview.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _titleController.text = widget.note.title;
    _contentController.text = widget.note.subtitle;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = content ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 50,
            ),
            CutomTextFormField(
              hintText: widget.note.title,
              controller: _titleController,
              onChanged: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CutomTextFormField(
              hintText: widget.note.subtitle,
              controller: _contentController,
              maxLines: 5,
              onChanged: (value) {
                content = value;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            EditNoteColorView(note: widget.note)
          ],
        ),
      ),
    );
  }
}
