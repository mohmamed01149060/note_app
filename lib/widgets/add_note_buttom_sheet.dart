import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/widgets/custom_button.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 400,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 32),
              CustomTextField(
                hintText: 'Title',
              ),
              SizedBox(height: 16),
              CustomTextField(
                maxLines: 5,
                hintText: 'Content',
              ),
              SizedBox(height: 60),
              CustomButton(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
