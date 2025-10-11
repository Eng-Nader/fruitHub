import 'package:flutter/material.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_auth_header.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_intinal_auth_body.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_pin_code_fild.dart';

class OneTimePasswordView extends StatelessWidget {
  const OneTimePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomIntinalAuthBody(
        children: [
          CustomAuthHeader(
            titileHeader: 'التحقق من الرمز',
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'أدخل الرمز الذي أرسلناه إلى عنوان بريد التالي Maxxx@email.com',
          ),
          SizedBox(
            height: 30,
          ),
          CustomPinCodeFild(),
        ],
      ),
    );
  }
}
