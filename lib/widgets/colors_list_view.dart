import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_notes/add_notes_cubit.dart';

import '../constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key, required this.isSelected, required this.color})
      : super(key: key);
  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 35,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 40,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40 * 2,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  BlocProvider.of<AddNotesCubit>(context).color =
                      kColors[index];
                  setState(() {});
                },
                child: ColorItem(
                  color: kColors[index],
                  isSelected: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
