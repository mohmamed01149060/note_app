import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/notes/notes_cubit.dart';
import 'package:note_app/widgets/notes_list_view.dart';

import 'custom_app_bar.dart';

class NotesAppViewBody extends StatefulWidget {
  const NotesAppViewBody({Key? key}) : super(key: key);

  @override
  State<NotesAppViewBody> createState() => _NotesAppViewBodyState();
}

class _NotesAppViewBodyState extends State<NotesAppViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SafeArea(
        child: Column(
          children: const [
            CustomAppBar(
              icon: Icon(Icons.search),
              text: 'Notes',
            ),
            Expanded(
              child: NotesListView(),
            ),
            // NotesListView(),
          ],
        ),
      ),
    );
  }
}
