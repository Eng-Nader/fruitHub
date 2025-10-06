import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruithub/core/constants/constants.dart';
import 'package:fruithub/core/utils/fruits_assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        if (mounted) {
          Navigator.pushReplacementNamed(
            context,
            kOnboarding,
          );
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: SvgPicture.asset(
            FruitsAssets.imagesPlant,
          ),
        ),
        SvgPicture.asset(
          FruitsAssets.imagesSplashLogo,
        ),
        SvgPicture.asset(
          FruitsAssets.imagesPupils,
        )
      ],
    );
  }
}
