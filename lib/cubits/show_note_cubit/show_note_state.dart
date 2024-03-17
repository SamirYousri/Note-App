part of 'show_note_cubit.dart';

@immutable
sealed class ShowNoteState {}

class ShowNoteInitial extends ShowNoteState {}

class ShowNoteSuccess extends ShowNoteState {}
