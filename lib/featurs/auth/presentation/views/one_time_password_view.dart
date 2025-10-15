import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/fruits_colors.dart';
import '../../../../core/utils/styles/fruits_sytls.dart';
import '../../../../core/utils/widgets/basic_button.dart';
import 'widgets/custom_auth_header.dart';
import 'widgets/custom_intinal_auth_body.dart';
import 'widgets/custom_pin_code_fild.dart';

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
            'أدخل الرمز الذي أرسلناه إلى عنوان بريد التاليMaxxx@email.com',
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
