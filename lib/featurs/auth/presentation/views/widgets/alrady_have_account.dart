import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/fruits_colors.dart';
import 'package:fruithub/core/utils/styles/fruits_sytls.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          const TextSpan(
            text: 'تمتلك حساب بالفعل؟  ',
            style: FruitsSytls.styleSemiBold16,
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () => Navigator.of(context).pop(),
            text: 'تسجيل الدخول ',
            style: FruitsSytls.styleSemiBold16.copyWith(
              color: FruitsColors.lightPrimaryColor,
            ),
          )
        ],
      ),
    );
  }
}
