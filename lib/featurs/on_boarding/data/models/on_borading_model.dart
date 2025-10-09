import 'package:flutter/widgets.dart';
import 'package:fruithub/core/utils/fruits_assets.dart';
import 'package:fruithub/core/utils/fruits_colors.dart';
import 'package:fruithub/core/utils/styles/fruits_sytls.dart';

class OnBoradingModel {
  final String backGroundImage, subTitle, image;
  final Widget title;
  const OnBoradingModel(
      this.backGroundImage, this.image, this.subTitle, this.title);

  static List<OnBoradingModel> onboradingList = [
    OnBoradingModel(
      Assets.imagesBackGroundPageview,
      Assets.imagesOnBoardingFruits,
      'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف \n مجموعتنا الواسعة من الفواكه الطازجة الممتازة\n واحصل على أفضل العروض والجودة العالية.',
      Row(
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
                style: FruitsSytls.styleBold23.copyWith(
                  color: FruitsColors.primaryColor,
                ),
              ),
              Text(
                'HUB',
                style: FruitsSytls.styleBold23.copyWith(
                  color: FruitsColors.lightSecondaryColor,
                ),
              ),
            ],
          )
        ],
      ),
    ),
    const OnBoradingModel(
      Assets.imagesBackGroundPageViewTwo,
      Assets.imagesOnBordingAnana,
      'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على \nالتفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة\n المثالية',
      Text(
        'ابحث وتسوق',
        style: FruitsSytls.styleBold23,
      ),
    ),
  ];
}
