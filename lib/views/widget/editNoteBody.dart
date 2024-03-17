// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/show_note_cubit/show_note_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/views/widget/addNoteForm.dart';
import 'package:note/views/widget/customAppBar.dart';
import 'package:note/views/widget/customTextField.dart';
import 'package:note/views/widget/editNote_color_ListView.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody(
      {super.key, required this.note, this.title, this.subTitle});
  final NoteModel note;
  final String? title, subTitle;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 40),
      child: Column(
        children: [
          CustomeAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<ShowNoteCubit>(context).showAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon1: Icons.check,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.note.title),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              subTitle = value;
            },
            hint: widget.note.subTitle,
            maxLine: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          EditNoteColorsList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
