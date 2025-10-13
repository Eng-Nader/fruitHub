import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/functions/show_snack_bar.dart';
import '../cubits/auth_cubit.dart';
import '../cubits/auth_state.dart';
import 'widgets/dont_have_account.dart';
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
  final TextEditingController _emialController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
            CustomAuthTextFild(
              controller: _emialController,
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
                  controller: _passwordController,
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
              alignment: AlignmentDirectional.centerEnd,
              child: TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: FruitsColors.primaryColor,
                ),
                onPressed: () => Navigator.pushNamed(context, kForgetPasswod),
                child: const Text(
                  'نسيت كلمة المرور؟',
                  style: FruitsSytls.styleBold13,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is SignInAuthState) {
                  showSnackBar(context, 'تم تسجيل الدخول بنجاح ');
                  Navigator.pushReplacementNamed(context, kHomeView);
                } else if (state is AuthFailureState) {
                  showSnackBar(context, state.errorMessage);
                }
              },
              builder: (context, state) {
                return BasicButton(
                  isLoading: state is AuthLoadingState ? true : false,
                  onPressed: () {
                    if (_globalKey.currentState!.validate()) {
                      context.read<AuthCubit>().signInEmailAndPassword(
                          _emialController.text.trim(),
                          _passwordController.text.trim());
                    }
                  },
                  title: 'تسجيل دخول',
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            DontHaveAccountWidget(
              onPressed: () {
                _emialController.clear();
                _passwordController.clear();
                Navigator.pushNamed(context, kSingUpView);
              },
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
