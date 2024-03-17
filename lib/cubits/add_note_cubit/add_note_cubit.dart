// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/constants.dart';
import 'package:note/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitial());

  Color color = const Color(0xffAC3931);
  addNote(NoteModel noteModel0) async {
    noteModel0.color = color.value;
    emit(AddNoteCubitLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      await noteBox.add(noteModel0);
      emit(AddNoteCubitSuccess());
    } catch (e) {
      emit(
        AddNoteCubitFailure(errMessage: e.toString()),
      );
    }
  }
}
