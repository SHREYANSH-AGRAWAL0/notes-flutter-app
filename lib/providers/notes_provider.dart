import 'package:flutter/material.dart';
import 'package:notes_app/models/note.dart';
import 'package:notes_app/services/api_services.dart';

class NotesProvider with ChangeNotifier {
  List<Note> notes = [];
  bool isloading = true;

  NotesProvider() {
    fetchNotes();
  }

  void addNote(Note note) {
    notes.add(note);
    notifyListeners();
    ApiService.addNote(note);
  }

  void updateNote(Note note) {
    int indexofNote =
        notes.indexOf(notes.firstWhere((element) => element.id == note.id));
    notes[indexofNote] = note;
    notifyListeners();
    ApiService.addNote(note);
  }

  void deleteNote(Note note) {
    int indexofNote =
        notes.indexOf(notes.firstWhere((element) => element.id == note.id));
    notes.removeAt(indexofNote);
    notifyListeners();
    ApiService.deleteNote(note);
  }

  void fetchNotes() async {
    notes = await ApiService.fetchNotes("ashreyansh47@gmail.com");
    isloading = false;
    notifyListeners();
  }
}
