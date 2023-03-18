part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NoteModel> notesList;
  NotesSuccess(this.notesList);
}

class NotesFailure extends NotesState {
  final String messageError;

  NotesFailure(this.messageError);
}
