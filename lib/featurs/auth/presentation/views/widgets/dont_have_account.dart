import 'package:flutter/material.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/fruits_colors.dart';
import '../../../../../core/utils/styles/fruits_sytls.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed ; 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ' لا تمتلك حساب ؟',
          style: FruitsSytls.styleSemiBold16
              .copyWith(color: const Color(0xff949D9E)),
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap:onPressed , 
          child: Text(
            'قم بانشاء حساب ',
            style: FruitsSytls.styleSemiBold16.copyWith(
              color: FruitsColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
