import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/styles/fruits_sytls.dart';

class CustomAuthHeader extends StatelessWidget {
  const CustomAuthHeader({super.key, required this.titileHeader});
  final String titileHeader;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Text(
            titileHeader,
            style: FruitsSytls.styleBold19,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: BoxBorder.all(
              color: Colors.grey,
            ),
          ),
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        )
      ],
    );
  }
}
