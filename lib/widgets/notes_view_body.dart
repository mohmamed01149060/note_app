import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';

class NotesAppViewBody extends StatelessWidget {
  const NotesAppViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SafeArea(
        child: Column(
          children: const [
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
