import 'package:flutter/material.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/utils/widgets/basic_button.dart';
import 'dots_indecator.dart';
import 'on_boarding_page_view.dart';

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
            currentPage: currentPage,
            pageController: pageController,
          ),
        ),
        DotsIndecator(
          currentIndex: currentPage,
        ),
        Visibility(
          visible: currentPage == 1,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
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
