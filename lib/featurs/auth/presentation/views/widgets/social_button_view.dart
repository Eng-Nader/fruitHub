import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruithub/featurs/auth/presentation/cubits/login_cubit/login_cubit.dart';
import '../../../../../core/utils/fruits_assets.dart';
import '../../../data/models/auth_social_model.dart';
import 'custom_social_button.dart';

class SocialButtonView extends StatelessWidget {
  const SocialButtonView({super.key});

  List<AuthSocialModel> buildSocials(BuildContext context) {
    if (Platform.isIOS) {
      AuthSocialModel(
        onPressen: () {
          context.read<LoginCubit>().loginWithGoogle();
        },
        image: FruitsAssets.imagesGoogle,
        title: 'تسجيل بواسطة جوجل',
      );

      AuthSocialModel(
        onPressen: () {
          context.read<LoginCubit>().loginWithApple();
        },
        image: FruitsAssets.imagesApple,
        title: 'تسجيل بواسطه ابل ',
      );
      AuthSocialModel(
        onPressen: () {
          context.read<LoginCubit>().loginWithFacebook();
        },
        image: FruitsAssets.imagesFacebook,
        title: 'تسجيل بواسطة فيسبوك',
      );
    }
    return [
      AuthSocialModel(
        onPressen: () {
          context.read<LoginCubit>().loginWithGoogle();
        },
        image: FruitsAssets.imagesGoogle,
        title: 'تسجيل بواسطة جوجل',
      ),
      AuthSocialModel(
        onPressen: () {
          context.read<LoginCubit>().loginWithFacebook();
        },
        image: FruitsAssets.imagesFacebook,
        title: 'تسجيل بواسطة فيسبوك',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final socials = buildSocials(context);
    return Column(
      children: [
        ...List.generate(
          socials.length,
          (index) {
            return Padding(
              padding: const EdgeInsets.only(
                bottom: 16,
              ),
              child: Platform.isAndroid
                  ? CustomSocialButton(
                      onPressed: socials[index].onPressen,
                      title: socials[index].title,
                      image: socials[index].image,
                    )
                  : const SizedBox(),
            );
          },
        ),
      ],
    );
  }
}
