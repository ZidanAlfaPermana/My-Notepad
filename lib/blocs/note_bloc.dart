import 'dart:async';
import '../models/note_model.dart';

class NoteBloc {
  final _notesController = StreamController<List<Note>>.broadcast();
  final List<Note> _notes = [];

  Stream<List<Note>> get notesStream => _notesController.stream;

  void addNote(Note note) {
    _notes.add(note);
    _notesController.sink.add(List.from(_notes));
  }

  void deleteNote(int id) {
    _notes.removeWhere((note) => note.id == id);
    _notesController.sink.add(List.from(_notes));
  }

  void dispose() {
    _notesController.close();
  }
}