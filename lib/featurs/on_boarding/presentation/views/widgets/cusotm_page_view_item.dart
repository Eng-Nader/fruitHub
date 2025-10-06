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
        Stack(
          children: [
            SvgPicture.asset(backGroundImage),
          ],
        )
      ],
    );
  }
}
