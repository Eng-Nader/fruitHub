import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruithub/core/constants/constants.dart';
import 'package:fruithub/core/utils/fruits_assets.dart';
import 'package:fruithub/core/utils/functions/create_show_dialog.dart';
import 'package:fruithub/core/utils/styles/fruits_sytls.dart';
import 'package:fruithub/core/utils/widgets/basic_button.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_auth_header.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_auth_text_fild.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_intinal_auth_body.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomIntinalAuthBody(
        children: [
          const CustomAuthHeader(
            titileHeader: 'كلمة مرور جديدة',
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'قم بإنشاء كلمة مرور جديدة لتسجيل الدخول',
            style: FruitsSytls.styleSemiBold16,
          ),
          const SizedBox(
            height: 34,
          ),
          const CustomAuthTextFild(
            hintText: 'كلمه المرور الجديده',
            suffixIcon: Icon(Icons.visibility),
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomAuthTextFild(
            suffixIcon: Icon(Icons.visibility),
            hintText: 'كبمه المرور الجديده ',
          ),
          const SizedBox(
            height: 20,
          ),
          BasicButton(
            onPressed: () {
              creatShowDialog(context);
              Future.delayed(
                const Duration(seconds: 5),
                () => Navigator.pushNamed(context, kLoginView),
              );
            },
            title: 'إنشاء كلمة مرور جديدة',
          )
        ],
      ),
    );
  }
}
