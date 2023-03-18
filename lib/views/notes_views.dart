import 'package:flutter/material.dart';
import 'package:note_app/widgets/notes_view_body.dart';

import '../widgets/add_note_buttom_sheet.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: const NotesAppViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
                return AddNotesBottomSheet();
              });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
