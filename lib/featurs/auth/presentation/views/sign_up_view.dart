import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/signup_cubit/sign_up_cubit.dart';
import '../cubits/signup_cubit/sign_up_state.dart';
import '../../../../core/utils/functions/show_snack_bar.dart';
import 'widgets/alrady_have_account.dart';
import 'widgets/term_and_condation.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
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
  late String name, email, password;
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
          CustomAuthTextFild(
            onSaved: (value) {
              name = value!;
            },
            hintText: 'الاسم كامل',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomAuthTextFild(
            onSaved: (value) {
              email = value!;
            },
            hintText: 'البريد الإلكتروني',
          ),
          const SizedBox(
            height: 10,
          ),
          ValueListenableBuilder(
            valueListenable: isVisible,
            builder: (context, value, _) {
              return CustomAuthTextFild(
                onSaved: (value) {
                  password = value!;
                },
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
          BlocConsumer<SignUpCubit, SignUpState>(
            listener: (context, state) {
              if (state is SignUPSucessState) {
                showSnackBar(context, 'تم تسجيل حساب جديد بنجاح ');
                Navigator.pop(context);
              } else if (state is SignUPFailureState) {
                showSnackBar(context, state.errorMessage);
              }
            },
            builder: (context, state) => BasicButton(
              isLoading: state is SignUPLoadingState ? true : false,
              onPressed: () {
                if (_globalKey.currentState!.validate()) {
                  _globalKey.currentState!.save();
                  if (isChecked.value) {
                    context.read<SignUpCubit>().createWithEmialAndPassword(
                        email.trim(), password.trim(), name.trim());
                  } else {
                    showSnackBar(
                        context, 'يجب عليك الموافقه علي الشروط والاحكام ');
                  }
                }
              },
              title: 'إنشاء حساب جديد',
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          const AlreadyHaveAccountWidget()
        ],
      ),
    ));
  }
}
