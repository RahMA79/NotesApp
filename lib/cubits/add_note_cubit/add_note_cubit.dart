import 'package:note_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:bloc/bloc.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitial());
}
