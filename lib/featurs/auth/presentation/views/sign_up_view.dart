import 'package:flutter/material.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/alrady_have_account.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/term_and_condation.dart';
import '../../../../core/utils/widgets/basic_button.dart';
import 'widgets/custom_auth_header.dart';
import 'widgets/custom_auth_text_fild.dart';
import 'widgets/custom_intinal_auth_body.dart';

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
            ValueListenableBuilder(
              valueListenable: isChecked,
              builder: (context, value, _) => TermAndCondation(
                isChecked: isChecked.value,
                onChanged: (data) {
                  isChecked.value = !value;
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            BasicButton(
              onPressed: () {
                if (_globalKey.currentState!.validate()) {}
              },
              title: 'إنشاء حساب جديد',
            ),
            const SizedBox(
              height: 26,
            ),
            const AlreadyHaveAccountWidget()
          ],
        ),
      ),
    );
  }
}
