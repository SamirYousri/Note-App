// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:note/models/note_model.dart';
import 'package:note/views/widget/editNoteBody.dart';

class EditNoteView extends StatelessWidget {
  EditNoteView({super.key, required this.note});
  NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(
        note: note,
      ),
    );
  }
}
