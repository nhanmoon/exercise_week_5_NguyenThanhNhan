import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/note_provider.dart';
import '../widgets/note_item.dart';
import 'add_note_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NoteProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Note App")),
      body: ListView.builder(
        itemCount: provider.notes.length,
        itemBuilder: (context, index) {
          final note = provider.notes[index];
          return NoteItem(
            note: note,
            onDelete: () => provider.removeNote(note.id),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (ctx) => const AddNoteScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
