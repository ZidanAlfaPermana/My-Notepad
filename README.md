<h1 align="center">📔 Aplikasi My Notepad 📔</h1>

<h4 align="center">Aplikasi Notepad Sederhana Dibuat Menggunakan Framework Flutter.</h4>

<h3>👋 Contributor:</h3>

- 🌱 Zidan Alfa Permana: **XI/PPLG-3/29**

<h3>📱 Menggunakan State Management Provider</h3>
<p>Aplikasi Notepad ini menggunakan Provider sebagai solusi manajemen state.</p>

```dart
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
```

<h3>📷 Pictures</h3>
