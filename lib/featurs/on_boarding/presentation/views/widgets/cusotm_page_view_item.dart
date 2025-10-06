import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CusotmPageViewItem extends StatelessWidget {
  const CusotmPageViewItem(
      {super.key,
      required this.subTitle,
      required this.image,
      required this.title,
      required this.backGroundImage});
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
            ],
          ),
        )
      ],
    );
  }
}
