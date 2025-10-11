import 'package:flutter/material.dart';
import 'package:fruithub/core/constants/constants.dart';
import '../../../../core/utils/fruits_colors.dart';
import '../../../../core/utils/styles/fruits_sytls.dart';
import '../../../../core/utils/widgets/basic_button.dart';
import 'widgets/custom_auth_header.dart';
import 'widgets/custom_auth_text_fild.dart';
import 'widgets/custom_divider.dart';
import 'widgets/custom_intinal_auth_body.dart';
import 'widgets/social_button_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _globalKey = GlobalKey();
  final ValueNotifier<bool> isVisible =
      ValueNotifier<bool>(false); //todo step one
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _globalKey,
        child: CustomIntinalAuthBody(
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
            ValueListenableBuilder(
              //todo step two with some condation without setState
              valueListenable: isVisible,
              builder: (context, value, _) {
                return CustomAuthTextFild(
                  hintText: 'كلمة المرور',
                  suffixIcon: IconButton(
                    onPressed: () {
                      isVisible.value = !isVisible.value;
                    },
                    icon: Icon(isVisible.value
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                  obscureText: isVisible.value ? false : true,
                );
              },
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
              onPressed: () {
                if (_globalKey.currentState!.validate()) {}
              },
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
                  onTap: () {
                    Navigator.pushNamed(context, kSingUpView);
                  },
                  child: Text(
                    'قم بانشاء حساب ',
                    style: FruitsSytls.styleSemiBold16.copyWith(
                      color: FruitsColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 37,
            ),
            const CustomDivider(),
            const SizedBox(
              height: 33,
            ),
            const SocialButtonView(),
          ],
        ),
      ),
    );
  }
}
