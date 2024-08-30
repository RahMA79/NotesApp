import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_oberver.dart';
import 'package:note_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocOberver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>('NotesBox');
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Montserrat',
      ),
      home: const NotesView(),
    );
  }
}
