import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruithub/core/constants/constants.dart';
import 'package:fruithub/core/utils/styles/fruits_sytls.dart';

class CusotmPageViewItem extends StatelessWidget {
  const CusotmPageViewItem(
      {super.key,
      required this.subTitle,
      required this.image,
      required this.title,
      required this.backGroundImage,
      });
  final String subTitle, image, backGroundImage;
  final Widget title;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .5,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backGroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  'تخطي',
                  style: TextStyle(
                    fontFamily: kFontFamily,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: FruitsSytls.styleBold23.copyWith(
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
