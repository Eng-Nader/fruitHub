import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/styles/fruits_sytls.dart';

class CustomAuthHeader extends StatelessWidget {
  const CustomAuthHeader({super.key, required this.titileHeader});
  final String titileHeader;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.arrow_back_ios,
            )),
        Text(
          titileHeader,
          style: FruitsSytls.styleBold19,
        ),
      ],
    );
  }
}
