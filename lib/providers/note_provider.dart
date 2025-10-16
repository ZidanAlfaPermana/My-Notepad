import 'package:flutter/material.dart';
import '../models/note_model.dart';

class NoteProvider with ChangeNotifier {
  final List<Note> _notes = [];

  List<Note> get notes => _notes;

  void addNote(Note newNote) {
    _notes.add(newNote);
    notifyListeners(); // Memberi tahu widget bahwa state telah berubah:cite[5]
  }

  void deleteNote(int id) {
    _notes.removeWhere((note) => note.id == id);
    notifyListeners();
  }

  void updateNote(Note updatedNote) {
    final index = _notes.indexWhere((note) => note.id == updatedNote.id);
    if (index != -1) {
      _notes[index] = updatedNote;
      notifyListeners();
    }
  }
}