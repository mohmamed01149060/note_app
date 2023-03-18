import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.onTap, this.isLoading = false})
      : super(key: key);
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColors,
          borderRadius: BorderRadius.circular(8),
        ),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(
                  color: Colors.black87,
                )
              : const Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
        ),
      ),
    );
  }
}
