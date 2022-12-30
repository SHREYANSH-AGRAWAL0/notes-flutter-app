import 'package:flutter/material.dart';
import 'package:notes_app/localstorage/user_details.dart';
import 'package:notes_app/models/note.dart';
import 'package:notes_app/services/api_services.dart';

class NotesProvider with ChangeNotifier {
  List<Note> notes = [];
  bool isloading = true;

  NotesProvider() {
    fetchNotes();
  }

  List<Note> getFilteredNotes(String searchQuery) {
    return notes
        .where((element) =>
            element.title!.toLowerCase().contains(searchQuery.toLowerCase()) ||
            element.content!.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();
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
    String currentUser = await LocalUser.get("email"); 
    notes = await ApiService.fetchNotes(currentUser);
    isloading = false;
    notifyListeners();
  }
}
