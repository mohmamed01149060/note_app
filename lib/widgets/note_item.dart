import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return EditNoteView(
              note: note,
            );
          }),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          bottom: 20,
          top: 20,
          left: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  note.subTitle,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 15,
                  ),
                ),
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 24,
              ),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ),
            // Text('data'),
          ],
        ),
      ),
    );
  }
}
