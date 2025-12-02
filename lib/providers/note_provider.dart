import 'package:flutter/material.dart';
import '../models/note.dart';

class NoteProvider extends ChangeNotifier {
  final List<Note> _notes = [];

  List<Note> get notes => _notes;

  void addNote(String title, String content) {
    _notes.add(
      Note(
        id: DateTime.now().toString(),
        title: title,
        content: content,
      ),
    );
    notifyListeners();
  }

  void removeNote(String id) {
    _notes.removeWhere((note) => note.id == id);
    notifyListeners();
  }
}
