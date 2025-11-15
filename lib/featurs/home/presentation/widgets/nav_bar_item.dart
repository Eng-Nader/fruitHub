import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/fruits_colors.dart';
import '../../../../core/utils/styles/fruits_sytls.dart';

class NavieBarItem extends StatelessWidget {
  const NavieBarItem(
      {super.key, required this.image, this.text, required this.isActive});

  final bool isActive;

  final String image;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      height: isActive ? 30 : 20,
      width: isActive ? 100 : 50,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xffEEF8ED) : null,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: CircleAvatar(
              backgroundColor:
                  isActive ? FruitsColors.primaryColor : Colors.transparent,
              child: SvgPicture.asset(
                image,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text ?? '',
              style: FruitsSytls.styleSemiBold11.copyWith(
                color: FruitsColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
