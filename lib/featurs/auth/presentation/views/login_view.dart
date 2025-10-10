import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/fruits_colors.dart';
import 'package:fruithub/core/utils/styles/fruits_sytls.dart';
import 'package:fruithub/core/utils/widgets/basic_button.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_auth_header.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_auth_text_fild.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_intinal_auth_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomIntinalAuthBody(
        children: [
          const CustomAuthHeader(
            titileHeader: 'تسجيل الدخول ',
          ),
          const SizedBox(
            height: 24,
          ),
          const CustomAuthTextFild(
            hintText: 'البريد الإلكتروني',
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomAuthTextFild(
            hintText: 'كلمة المرور',
            suffixIcon: Icon(
              Icons.visibility,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: FruitsColors.primaryColor,
              ),
              onPressed: () {},
              child: const Text(
                'نسيت كلمة المرور؟',
                style: FruitsSytls.styleBold13,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          BasicButton(
            onPressed: () {},
            title: 'تسجيل دخول',
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
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
                onTap: () {},
                child: Text(
                  'قم بانشاء حساب ',
                  style: FruitsSytls.styleSemiBold16.copyWith(
                    color: FruitsColors.primaryColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
