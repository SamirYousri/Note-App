// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note/models/note_model.dart';

import '../../constants.dart';

part 'show_note_state.dart';

class ShowNoteCubit extends Cubit<ShowNoteState> {
  ShowNoteCubit() : super(ShowNoteInitial());

  List<NoteModel>? notes;

  showAllNotes() async {
    var noteBox = Hive.box<NoteModel>(kNoteBox);
    notes = noteBox.values.toList();
    emit(ShowNoteSuccess());
  }
}
