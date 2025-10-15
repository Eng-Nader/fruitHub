import 'package:flutter/material.dart';
import '../fruits_colors.dart';
import '../styles/fruits_sytls.dart';

void showSnackBar(context, String title) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: FruitsColors.primaryColor,
      action: SnackBarAction(
        textColor: Colors.white,
        label: 'حذف',
        onPressed: () {},
      ),
      content: Text(
        title,
        style: FruitsSytls.styleBold13.copyWith(
          color: Colors.white,
        ),
      ),
    ),
  );
}
