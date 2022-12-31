import 'package:flutter/material.dart';
import 'package:notes_app/pages/add_new_note.dart';
import 'package:notes_app/pages/home.dart';
import 'package:notes_app/pages/login.dart';
import 'package:notes_app/providers/notes_provider.dart';
import 'package:notes_app/utils/routes.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => NotesProvider())
        ],
        child: MaterialApp(
          initialRoute: isLoggedIn ? MyRoutes.homeRoute : MyRoutes.login,
          routes: {
            MyRoutes.login: (context) => LoginPage(),
            MyRoutes.homeRoute: (context) => Home(),
            MyRoutes.addnote: (context) => AddNewNote(isUpdate: true),
          },
        ));
  }
}
