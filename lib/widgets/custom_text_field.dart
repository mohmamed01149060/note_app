import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.hintText, Key? key, this.maxLines = 1})
      : super(key: key);
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColors,
      maxLines: maxLines,
      decoration: InputDecoration(
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: kPrimaryColors),
        hintText: hintText,
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
