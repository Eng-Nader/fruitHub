import 'package:flutter/material.dart';
import '../../../../../core/utils/styles/fruits_sytls.dart';

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
        GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_back_ios,
          ),
        )
      ],
    );
  }
}
