import 'package:flutter/material.dart';
import 'package:fruithub/featurs/on_boarding/data/models/on_borading_model.dart';
import 'package:fruithub/featurs/on_boarding/presentation/views/widgets/cusotm_page_view_item.dart';

class OnBoradingPageView extends StatefulWidget {
  const OnBoradingPageView({
    super.key,
  });

  @override
  State<OnBoradingPageView> createState() => _OnBoradingPageViewState();
}

class _OnBoradingPageViewState extends State<OnBoradingPageView> {
  late List<OnBoradingModel> onboradingList;
  @override
  void initState() {
    onboradingList = OnBoradingModel.onboradingList;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: onboradingList.length,
      itemBuilder: (context, index) {
        return CusotmPageViewItem(
          subTitle: onboradingList[index].subTitle,
          image: onboradingList[index].image,
          title: onboradingList[index].title,
          backGroundImage: onboradingList[index].backGroundImage,
        );
      },
    );
  }
}
