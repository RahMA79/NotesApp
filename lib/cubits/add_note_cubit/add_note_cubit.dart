import 'dart:ui';

import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:bloc/bloc.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = const Color(0xFF9F86C0);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());

    try {
      var notesBox = Hive.box<NoteModel>('NotesBox');
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
