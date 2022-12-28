import 'package:flutter/material.dart';
import 'package:notes_app/pages/add_new_note.dart';
import 'package:notes_app/pages/home.dart';
import 'package:notes_app/pages/login.dart';
import 'package:notes_app/providers/notes_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => NotesProvider())
        ],
        child: MaterialApp(
          initialRoute: "/login",
          routes: {
            "/login": (context) => LoginPage(),
            "/": (context) => Home(),
            "/addnewnote": (context) => AddNewNote(isUpdate: true),
          },
        ));
  }
}
