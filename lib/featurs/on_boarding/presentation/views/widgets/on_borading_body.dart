import 'package:flutter/material.dart';
import 'package:fruithub/featurs/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoradingBody extends StatelessWidget {
  const OnBoradingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: OnBoradingPageView(),
        ),
      ],
    );
  }
}
