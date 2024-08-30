import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/FetchNotes/notes_cubit.dart';
import 'package:note_app/widgets/cutom_bottom_sheet.dart';
import 'package:note_app/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return Scaffold(
            floatingActionButton: FloatingActionButton(
              backgroundColor: const Color(0xff0077b6),
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return const CutomBottomSheet();
                    });
              },
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            body: const NoteViewBody());
      },
    );
  }
}
