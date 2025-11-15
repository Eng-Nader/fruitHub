import 'package:flutter/material.dart';
import '../../../../core/utils/fruits_assets.dart';
import 'cart.dart';
import 'catogry.dart';
import 'home.dart';
import 'profile.dart';
import '../widgets/nav_bar_item.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  final _list = [
    _Model(
      FruitsAssets.home,
      const HomePage(),
      'الرئيسيه',
      FruitsAssets.activeHome,
    ),
    _Model(
      FruitsAssets.categroy,
      const CatogryPage(),
      'المنتجات',
      FruitsAssets.activeCatogry,
    ),
    _Model(
      FruitsAssets.cart,
      const CartPage(),
      'التسوق',
      FruitsAssets.activeCart,
    ),
    _Model(
      FruitsAssets.profile,
      const ProfilePage(),
      'حسابي ',
      FruitsAssets.activeProfile,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[currentIndex].widget,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 7,
              spreadRadius: -2,
              color: const Color(
                0xff000000,
              ).withValues(alpha: .3),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              ...List.generate(
                _list.length,
                (index) {
                  return BottomNavigationBarItem(
                    icon: NavieBarItem(
                      isActive: currentIndex == index,
                      text: currentIndex == index ? _list[index].text : null,
                      image: currentIndex == index
                          ? _list[index].activeImage
                          : _list[index].image,
                    ),
                    label: '',
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Model {
  final Widget widget;
  final String image;
  final String? text;
  final String activeImage;

  _Model(this.image, this.widget, this.text, this.activeImage);
}
