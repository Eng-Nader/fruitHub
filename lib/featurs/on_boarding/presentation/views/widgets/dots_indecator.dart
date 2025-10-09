import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/fruits_colors.dart';

class DotsIndecator extends StatelessWidget {
  const DotsIndecator({
    super.key,
    required this.currentIndex,
  });
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          2,
          (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 8),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 450),
                height: 10,
                width: currentIndex == index ? 40 : 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: currentIndex == index
                      ? FruitsColors.primaryColor
                      : FruitsColors.primaryColor.withValues(alpha: .8),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
