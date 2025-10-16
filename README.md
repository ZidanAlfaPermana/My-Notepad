<h1 align="center">📔 Aplikasi My Notepad 📔</h1>

<h4 align="center">Aplikasi Notepad Sederhana Dibuat Menggunakan Framework Flutter.</h4>

<h3>👋 Contributor:</h3>

- 🌱 Zidan Alfa Permana: **XI/PPLG-3/29**

<h3>📱 Menggunakan State Management Provider</h3>
<p>Aplikasi Notepad ini menggunakan Provider sebagai solusi manajemen state.</p>
```dart
class NoteProvider with ChangeNotifier {
  final List<Note> _notes = [];

  List<Note> get notes => _notes;

  void addNote(Note newNote) {
    _notes.add(newNote);
    notifyListeners();
  }

  void deleteNote(int id) {
    _notes.removeWhere((note) => note.id == id);
    notifyListeners();
  }
}
```

<h3>📷 Pictures</h3>
