import 'package:flutter/material.dart';

void showSnackBar(context, String title) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      action: SnackBarAction(label: 'حزف', onPressed: () {}),
      content: Text(title),
    ),
  );
}
