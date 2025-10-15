import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/utils/styles/fruits_sytls.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton(
      {super.key,
      required this.title,
      required this.image,
      required this.onPressed});
  final String title;
  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          fixedSize: const Size.fromHeight(56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
      onPressed: onPressed,
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
