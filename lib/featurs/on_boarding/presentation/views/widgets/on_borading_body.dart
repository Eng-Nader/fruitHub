import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/fruits_colors.dart';
import 'package:fruithub/featurs/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoradingBody extends StatelessWidget {
  const OnBoradingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: OnBoradingPageView(),
        ),
        DotsIndicator(
          animationDuration: const Duration(milliseconds: 350),
          dotsCount: 2,
          animate: true,
          decorator: DotsDecorator(
            activeColor: FruitsColors.primaryColor,
            color: FruitsColors.primaryColor.withValues(
              alpha: .5,
            ),
          ),
        )
      ],
    );
  }
}
