import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles/fruits_sytls.dart';

class CusotmPageViewItem extends StatelessWidget {
  const CusotmPageViewItem({
    super.key,
    required this.subTitle,
    required this.image,
    required this.title,
    required this.backGroundImage,
    required this.isVisible,
  });
  final String subTitle, image, backGroundImage;
  final Widget title;
  final bool isVisible;

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
              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {},
                    child: Text(
                      'تخطي',
                      style: FruitsSytls.styleBold23.copyWith(
                        color: const Color(0xff949d9e),
                      ),
                    ),
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
