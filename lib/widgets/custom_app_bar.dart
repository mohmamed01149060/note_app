import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w400,
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
