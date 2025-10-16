import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/note_provider.dart';
import 'pages/home_page.dart';
import 'pages/add_note_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NoteProvider(),
      child: MaterialApp(
        title: 'Notes App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // ROUTING configuration:cite[4]:cite[9]
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/add-note': (context) => const AddNotePage(),
        },
      ),
    );
  }
}