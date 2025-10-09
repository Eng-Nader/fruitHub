import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../fruits_colors.dart';

class BasicButton extends StatelessWidget {
  const BasicButton({super.key, required this.onPressed, required this.title});
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: FruitsColors.primaryColor,
          fixedSize: const Size.fromHeight(54),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontFamily: kFontFamily,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
