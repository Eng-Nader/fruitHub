import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/fruits_assets.dart';
import 'package:fruithub/core/utils/styles/fruits_sytls.dart';
import 'package:fruithub/featurs/on_boarding/presentation/views/widgets/cusotm_page_view_item.dart';

class OnBoradingPageView extends StatelessWidget {
  const OnBoradingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        CusotmPageViewItem(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'مرحبًا بك في',
                style: FruitsSytls.styleBold23,
              ),
              const SizedBox(
                width: 5,
              ),
              Row(
                textDirection: TextDirection.ltr,
                children: [
                  Text(
                    ' Fruit',
                    style: FruitsSytls.styleBold23
                        .copyWith(color: const Color(0xff1B5E37)),
                  ),
                  Text(
                    'HUB',
                    style: FruitsSytls.styleBold23
                        .copyWith(color: const Color(0xffF8CF81)),
                  ),
                ],
              )
            ],
          ),
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف \n مجموعتنا الواسعة من الفواكه الطازجة الممتازة\n واحصل على أفضل العروض والجودة العالية.',
          backGroundImage: Assets.imagesBackGroundPageview,
          image: Assets.imagesOnBoardingFruits,
        ),
        const CusotmPageViewItem(
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على \nالتفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة\n المثالية',
          image: Assets.imagesOnBordingAnana,
          title: Text(
            'ابحث وتسوق',
            style: FruitsSytls.styleBold23,
          ),
          backGroundImage: Assets.imagesBackGroundPageViewTwo,
        )
      ],
    );
  }
}
