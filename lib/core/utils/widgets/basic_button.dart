import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../fruits_colors.dart';

class BasicButton extends StatelessWidget {
  const BasicButton(
      {super.key,
      required this.onPressed,
      required this.title,
       this.isLoading = false});
  final VoidCallback onPressed;
  final String title;
  final bool isLoading;

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
      child: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            )
          : Text(
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
