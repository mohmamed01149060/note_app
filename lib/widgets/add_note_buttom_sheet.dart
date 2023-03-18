import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_notes/add_notes_cubit.dart';
import 'package:note_app/widgets/add_note_form.dart';

class AddNotesBottomSheet extends StatelessWidget {
  AddNotesBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {
            print(
              'failed ${state.messageError}',
            );
          } else if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoading ? true : false,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: SingleChildScrollView(
                child: AddNotesForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
