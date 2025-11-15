import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruithub/core/utils/fruits_assets.dart';
import 'package:fruithub/core/utils/fruits_colors.dart';
import 'package:fruithub/core/utils/styles/fruits_sytls.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: FruitsColors.primaryColor,
          child: SvgPicture.asset(
            FruitsAssets.profile,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Column(
          children: [
            Text(
              'صباح الخير !..',
              style: FruitsSytls.styleRegular16,
            ),
            Text(
              'أحمد مصطفي',
              style: FruitsSytls.styleBold16,
            )
          ],
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: const Color(0xffEEF8ED),
          child: SvgPicture.asset(
            FruitsAssets.notifaction,
          ),
        )
      ],
    );
  }
}
