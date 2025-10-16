import 'package:flutter/material.dart';
import '../models/note_model.dart';
import '../providers/note_provider.dart';
import 'package:provider/provider.dart';

class AddNotePage extends StatefulWidget {
  const AddNotePage({super.key});

  @override
  State<AddNotePage> createState() => _AddNotePageState();
}

class _AddNotePageState extends State<AddNotePage> {
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _contentController,
              decoration: const InputDecoration(
                labelText: 'Content',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _saveNote(context);
              },
              child: const Text('Save Note'),
            ),
          ],
        ),
      ),
    );
  }

  void _saveNote(BuildContext context) {
    final noteProvider = Provider.of<NoteProvider>(context, listen: false);

    final newNote = Note(
      id: DateTime.now().millisecondsSinceEpoch,
      title: _titleController.text,
      content: _contentController.text,
      createdAt: DateTime.now(),
    );

    noteProvider.addNote(newNote);
    Navigator.pop(context); // Kembali ke halaman sebelumnya:cite[4]
  }
}