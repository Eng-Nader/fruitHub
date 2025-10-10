
import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/styles/fruits_sytls.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Container(
            height: 1,
            width: 343,
            decoration: const BoxDecoration(
              color: Color(
                0xffDDDFDF,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          'او ',
          style: FruitsSytls.styleSemiBold16,
        ),
        const SizedBox(
          width: 5,
        ),
        Flexible(
          child: Container(
            height: 1,
            width: 343,
            decoration: const BoxDecoration(
              color: Color(
                0xffDDDFDF,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
