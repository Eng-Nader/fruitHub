import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/fruits_assets.dart';
import 'package:fruithub/featurs/on_boarding/presentation/views/widgets/cusotm_page_view_item.dart';

class OnBoradingPageView extends StatelessWidget {
  const OnBoradingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        const CusotmPageViewItem(
          title: Text('nader'),
          subTitle: '',
          backGroundImage: Assets.imagesBackGroundPageview,
          image: '',
        )
      ],
    );
  }
}
