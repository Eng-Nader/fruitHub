import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/styles/fruits_sytls.dart';
import '../../../../core/utils/widgets/basic_button.dart';
import 'widgets/custom_auth_header.dart';
import 'widgets/custom_auth_text_fild.dart';
import 'widgets/custom_intinal_auth_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomIntinalAuthBody(
        children: [
          const CustomAuthHeader(
            titileHeader: 'نسيان كلمة المرور',
          ),
          const SizedBox(
            height: 20,
          ),
          const Opacity(
            opacity: .8,
            child: Text(
              'لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.',
              style: FruitsSytls.styleSemiBold16,
            ),
          ),
          const SizedBox(
            height: 31,
          ),
          const CustomAuthTextFild(
            hintText: 'ادخل رقم الجوال ',
          ),
          const SizedBox(
            height: 30,
          ),
          BasicButton(
            onPressed: () => Navigator.pushNamed(context, kOtp),
            title: 'نسيت كلمة المرور',
          )
        ],
      ),
    );
  }
}
