import 'package:flutter/material.dart';
import '../../../data/models/on_borading_model.dart';
import 'cusotm_page_view_item.dart';

class OnBoradingPageView extends StatelessWidget {
  OnBoradingPageView({
    super.key,
    required this.pageController,
    required this.currentPage,
  });
  final PageController pageController;
  final List<OnBoradingModel> onboradingList = OnBoradingModel.onboradingList;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: onboradingList.length,
      itemBuilder: (context, index) {
        return CusotmPageViewItem(
          isVisible: currentPage.floor() == 0,
          subTitle: onboradingList[index].subTitle,
          image: onboradingList[index].image,
          title: onboradingList[index].title,
          backGroundImage: onboradingList[index].backGroundImage,
        );
      },
    );
  }
}
