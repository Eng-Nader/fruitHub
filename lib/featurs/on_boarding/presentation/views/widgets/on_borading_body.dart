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
  ValueNotifier<int> currentPage = ValueNotifier(0);
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPage.value = pageController.page!.round();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ValueListenableBuilder(
          valueListenable: currentPage,
          builder: (context, value, _) => Expanded(
            child: OnBoradingPageView(
              currentPage: value,
              pageController: pageController,
            ),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: currentPage,
          builder: (context, value, _) => DotsIndecator(
            currentIndex: value,
          ),
        ),
        ValueListenableBuilder(
          valueListenable: currentPage,
          builder: (context, value, _) {
            return currentPage.value == 1
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kHorzintalPadding,
                      vertical: 43,
                    ),
                    child: BasicButton(
                      onPressed: () {},
                      title: 'ابدا الان ',
                    ),
                  )
                : Container(
                    height: 120,
                  );
          },
        )
      ],
    );
  }
}
