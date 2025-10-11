import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruithub/core/utils/fruits_assets.dart';
import 'package:fruithub/core/utils/styles/fruits_sytls.dart';

void creatShowDialog(context) async {
  await showDialog(
    animationStyle: const AnimationStyle(
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    ),
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return Dialog(
        child: AspectRatio(
          aspectRatio: 342 / 266,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    FruitsAssets.imageCheck,
                  ),
                  const SizedBox(
                    height: 29,
                  ),
                  const Text(
                    'تم تغيير الباسورد بنجاح',
                    style: FruitsSytls.styleBold16,
                  )
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
