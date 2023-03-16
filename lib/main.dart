import 'package:flutter/material.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
