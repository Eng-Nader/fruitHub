import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fruithub/core/constants/constants.dart';
import 'package:fruithub/core/utils/widgets/basic_button.dart';
import 'package:fruithub/featurs/on_boarding/presentation/views/widgets/dots_indecator.dart';
import 'package:fruithub/featurs/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoradingBody extends StatefulWidget {
  const OnBoradingBody({super.key});

  @override
  State<OnBoradingBody> createState() => _OnBoradingBodyState();
}

class _OnBoradingBodyState extends State<OnBoradingBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: OnBoradingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndecator(
          currentIndex: currentPage,
        ),
        Visibility(
          maintainState: true,
          maintainAnimation: true,
          maintainSize: true,
          visible: currentPage == 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorzintalPadding,
              vertical: 43,
            ),
            child: BasicButton(
              onPressed: () {},
              title: 'ابدا الان ',
            ),
          ),
        )
      ],
    );
  }
}
