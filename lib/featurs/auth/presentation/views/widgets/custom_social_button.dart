import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruithub/core/utils/fruits_assets.dart';
import 'package:fruithub/core/utils/styles/fruits_sytls.dart';
import 'package:fruithub/featurs/auth/data/models/auth_social_model.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({super.key, required this.title, required this.image});
  final String title ; 
  final String image ; 
 

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          fixedSize: const Size.fromHeight(56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
      onPressed: () {},
      child: Center(
          child: Row(
        children: [
          SvgPicture.asset(
            image, 
            height: 30,
          ),
          const SizedBox(
            width: 45,
          ),
          Text(
            title, 
              style: FruitsSytls.styleSemiBold16.copyWith(
              color: Colors.black,
            ),
          )
        ],
      )),
    );
  }
}
