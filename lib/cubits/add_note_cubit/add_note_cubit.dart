import 'package:hive_flutter/adapters.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:bloc/bloc.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>('NotesBox');
      emit(AddNoteSuccess());
      await notesBox.add(note);
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
