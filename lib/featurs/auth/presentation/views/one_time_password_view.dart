import 'package:flutter/material.dart';
import 'package:fruithub/core/constants/constants.dart';
import 'package:fruithub/core/utils/fruits_colors.dart';
import 'package:fruithub/core/utils/styles/fruits_sytls.dart';
import 'package:fruithub/core/utils/widgets/basic_button.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_auth_header.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_intinal_auth_body.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_pin_code_fild.dart';

class OneTimePasswordView extends StatelessWidget {
  const OneTimePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomIntinalAuthBody(
        children: [
          const CustomAuthHeader(
            titileHeader: 'التحقق من الرمز',
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'أدخل الرمز الذي أرسلناه إلى عنوان بريد التالي Maxxx@email.com',
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomPinCodeFild(),
          const SizedBox(
            height: 20,
          ),
          BasicButton(
            onPressed: () => Navigator.pushNamed(context, kNewPassword),
            title: 'تحقق من الرمز',
          ),
          const SizedBox(
            height: 24,
          ),
          Center(
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: FruitsColors.lightPrimaryColor,
              ),
              onPressed: () {},
              child: const Text(
                'إعادة إرسال الرمز',
                style: FruitsSytls.styleSemiBold16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
