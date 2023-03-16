import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_view_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesAppViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
