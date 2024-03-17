// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/show_note_cubit/show_note_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/views/editNoteview.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.noteModel0});
  final NoteModel noteModel0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EditNoteView(
                  note: noteModel0,
                );
              },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(noteModel0.color),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8,
              top: 8,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                    title: Text(
                      noteModel0.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      noteModel0.subTitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        noteModel0.delete();
                        BlocProvider.of<ShowNoteCubit>(context).showAllNotes();
                      },
                      icon: const Icon(
                        Icons.delete,
                        size: 30,
                        color: Colors.black,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Text(
                    noteModel0.date,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
