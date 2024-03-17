// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/show_note_cubit/show_note_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/views/widget/customNoteItem.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowNoteCubit, ShowNoteState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<ShowNoteCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.only(top: 12),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return CustomNoteItem(noteModel0: notes[index]);
            },
          ),
        );
      },
    );
  }
}
