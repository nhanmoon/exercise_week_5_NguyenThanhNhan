class NoteService {
  Future<void> saveNote(String title, String content) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return;
  }
}
