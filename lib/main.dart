import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/pages/add_new_note.dart';
import 'package:notes_app/pages/home.dart';
import 'package:notes_app/pages/login.dart';
import 'package:notes_app/providers/notes_provider.dart';
import 'package:notes_app/utils/routes.dart';
import 'package:provider/provider.dart';

Future<void> main() async{
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
          initialRoute: MyRoutes.login,
          routes: {
            MyRoutes.login: (context) => LoginPage(),
            MyRoutes.homeRoute: (context) => Home(),
            MyRoutes.addnote: (context) => AddNewNote(isUpdate: true),
          },
        ));
  }
}
