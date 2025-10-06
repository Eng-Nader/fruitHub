import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruithub/core/constants/constants.dart';
import 'package:fruithub/core/utils/fruits_assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  @override
  void initState() {
    configrationAnimation();

    animationController.forward();
    exuteNavgation();
    super.initState();
  }

  void configrationAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 7),
    );
    animation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.bounceIn,
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void exuteNavgation() {
    Future.delayed(
      const Duration(seconds: 10),
      () {
        if (mounted) {
          Navigator.pushReplacementNamed(
            context,
            kOnboarding,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: ScaleTransition(
            scale: animation,
            child: SvgPicture.asset(
              FruitsAssets.imagesPlant,
            ),
          ),
        ),
        ScaleTransition(
          scale: animation,
          child: SvgPicture.asset(
            FruitsAssets.imagesSplashLogo,
          ),
        ),
        SvgPicture.asset(
          FruitsAssets.imagesPupils,
        )
      ],
    );
  }
}
