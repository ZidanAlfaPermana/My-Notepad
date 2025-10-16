import 'package:flutter/material.dart';
import '../widgets/note_card.dart';
import '../providers/note_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final noteProvider = Provider.of<NoteProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Notes'),
      ),
      body: ListView.builder(
        itemCount: noteProvider.notes.length,
        itemBuilder: (context, index) {
          final note = noteProvider.notes[index];
          return NoteCard(
            note: note,
            onDelete: () {
              noteProvider.deleteNote(note.id!);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // NAVIGASI ke halaman tambah note:cite[4]
          Navigator.pushNamed(context, '/add-note');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}