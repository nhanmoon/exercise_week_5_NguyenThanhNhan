import 'package:flutter/material.dart';
import '../models/note.dart';

class NoteItem extends StatelessWidget {
  final Note note;
  final VoidCallback onDelete;

  const NoteItem({super.key, required this.note, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(note.title),
        subtitle: Text(note.content),
        trailing: IconButton(
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: onDelete,
        ),
      ),
    );
  }
}
