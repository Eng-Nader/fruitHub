import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/fruits_assets.dart';
import 'package:fruithub/featurs/auth/data/models/auth_social_model.dart';
import 'package:fruithub/featurs/auth/presentation/views/widgets/custom_social_button.dart';

class SocialButtonView extends StatelessWidget {
  const SocialButtonView({super.key});
  static const List<AuthSocialModel> socials = [
    AuthSocialModel(
      image: FruitsAssets.imagesGoogle,
      title: 'تسجيل بواسطة جوجل',
    ),
    AuthSocialModel(
      image: FruitsAssets.imagesApple,
      title: 'تسجيل بواسطه ابل ',
    ),
    AuthSocialModel(
      image: FruitsAssets.imagesFacebook,
      title: 'تسجيل بواسطة فيسبوك',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          socials.length,
          (index) {
            return Padding(
              padding: const EdgeInsets.only(
                bottom: 16,
              ),
              child: CustomSocialButton(
                title: socials[index].title,
                image: socials[index].image,
              ),
            );
          },
        ),
      ],
    );
  }
}
