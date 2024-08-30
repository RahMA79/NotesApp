import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/colors_listview.dart';

class EditNoteColorView extends StatefulWidget {
  const EditNoteColorView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorView> createState() => _EditNoteColorViewState();
}

class _EditNoteColorViewState extends State<EditNoteColorView> {
  late int currentIndex;

  List<Color> colors = const [
    Color(0xFF9F86C0),
    Color(0xff0077b6),
    Color(0xffa2d2ff),
    Color(0xffbde0fe),
    Color(0xffffafcc),
    Color(0xffffc8dd),
    Color(0xffcdb4db),
    Color(0xfffb6f92),
  ];
  @override
  void initState() {
    currentIndex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = colors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: colors[index],
                ),
              ),
            );
          }),
    );
  }
}
