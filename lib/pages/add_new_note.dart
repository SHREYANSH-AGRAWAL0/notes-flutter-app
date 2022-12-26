// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:notes_app/providers/notes_provider.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import '../models/note.dart';

class AddNewNote extends StatefulWidget {
  final bool isUpdate;
  final Note? note;
  AddNewNote({super.key, required this.isUpdate, this.note});

  @override
  State<AddNewNote> createState() => _AddNewNoteState();
}

class _AddNewNoteState extends State<AddNewNote> {
  FocusNode notefocus = FocusNode();

  TextEditingController titleController = TextEditingController();

  TextEditingController contentController = TextEditingController();

  void addNewNote() {
    Note newNote = Note(
        id: Uuid().v1(),
        userid: "ashreyansh47@gmail.com",
        title: titleController.text,
        content: contentController.text,
        dateadded: DateTime.now());

    Provider.of<NotesProvider>(context, listen: false).addNote(newNote);
    Navigator.pop(context);
  }

  void updateNote() {
    widget.note!.title = titleController.text;
    widget.note!.content = contentController.text;
    Provider.of<NotesProvider>(context, listen: false).updateNote(widget.note!);
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
    if (widget.isUpdate) {
      titleController.text = widget.note!.title!;
      contentController.text = widget.note!.content!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                if (widget.isUpdate) {
                  updateNote();
                } else {
                  addNewNote();
                }
              },
              icon: Icon(Icons.check))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextField(
                controller: titleController,
                onSubmitted: ((value) {
                  if (value != "") {
                    notefocus.requestFocus();
                  }
                }),
                autofocus: !widget.isUpdate,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    hintText: "Title", border: InputBorder.none),
              ),
              Expanded(
                  child: TextField(
                controller: contentController,
                focusNode: notefocus,
                maxLines: null,
                style: TextStyle(fontSize: 20),
                decoration:
                    InputDecoration(hintText: "Note", border: InputBorder.none),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
