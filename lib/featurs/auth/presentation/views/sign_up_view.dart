import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/fruits_colors.dart';
import 'package:fruithub/core/utils/styles/fruits_sytls.dart';
import 'package:fruithub/core/utils/widgets/basic_button.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_auth_header.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_auth_text_fild.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_intinal_auth_body.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final GlobalKey<FormState> _globalKey = GlobalKey();
  final ValueNotifier<bool> isVisible = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isChecked = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _globalKey,
        child: CustomIntinalAuthBody(
          children: [
            const CustomAuthHeader(titileHeader: 'حساب جديد'),
            const SizedBox(
              height: 24,
            ),
            const CustomAuthTextFild(
              hintText: 'الاسم كامل',
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomAuthTextFild(
              hintText: 'البريد الإلكتروني',
            ),
            const SizedBox(
              height: 10,
            ),
            ValueListenableBuilder(
              valueListenable: isVisible,
              builder: (context, value, _) {
                return CustomAuthTextFild(
                  hintText: 'كلمة المرور',
                  obscureText: value ? false : true,
                  suffixIcon: IconButton(
                    onPressed: () {
                      isVisible.value = !value;
                    },
                    icon: value
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Transform.scale(
                  scale: 1.5,
                  child: ValueListenableBuilder(
                      valueListenable: isChecked,
                      builder: (context, value, child) {
                        return Checkbox(
                          side: const BorderSide(
                            color: Color(0xffDDDFDF),
                            width: 1,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          activeColor: FruitsColors.primaryColor,
                          value: isChecked.value ? true : false,
                          onChanged: (vlaue) {
                            isChecked.value = !value;
                          },
                        );
                      }),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                        style: FruitsSytls.styleSemiBold13,
                      ),
                      TextSpan(
                        text: ' الشروط \nوالأحكام الخاصة بنا',
                        style: FruitsSytls.styleSemiBold13.copyWith(
                          color: FruitsColors.lightPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            BasicButton(
              onPressed: () {
                if (_globalKey.currentState!.validate()) {
                  
                }
              },
              title: 'إنشاء حساب جديد',
            ),
            const SizedBox(
              height: 26,
            ),
            InkWell(
              onTap: Navigator.of(context).pop,
              child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    const TextSpan(
                      text: 'تمتلك حساب بالفعل؟  ',
                      style: FruitsSytls.styleSemiBold16,
                    ),
                    TextSpan(
                      text: 'تسجيل الدخول ',
                      style: FruitsSytls.styleSemiBold16.copyWith(
                        color: FruitsColors.lightPrimaryColor,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
