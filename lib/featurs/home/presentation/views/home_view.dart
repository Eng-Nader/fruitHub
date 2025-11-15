import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruithub/core/utils/fruits_assets.dart';
import 'package:fruithub/core/utils/fruits_colors.dart';
import 'package:fruithub/featurs/home/presentation/views/cart.dart';
import 'package:fruithub/featurs/home/presentation/views/catogry.dart';
import 'package:fruithub/featurs/home/presentation/views/profile.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  final _list = [
    _Model(FruitsAssets.home, const ProfileView(), 'الرئيسيه'),
    _Model(
      FruitsAssets.categroy,
      const CatogryView(),
      'المنتجات',
    ),
    _Model(
      FruitsAssets.cart,
      const CartView(),
      'سله التسوق ',
    ),
    _Model(
      FruitsAssets.profile,
      Container(),
      'حسابي ',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[currentIndex].widget,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(16),
          child: BottomNavigationBar(
            selectedItemColor: Colors.green,
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
                    backgroundColor: Colors.white,
                    icon: NavieBarItem(
                      isActive: currentIndex == index,
                      text: currentIndex == index ? _list[index].text : null,
                      image: _list[index].image,
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

  _Model(this.image, this.widget, this.text);
}

class NavieBarItem extends StatelessWidget {
  const NavieBarItem(
      {super.key, required this.image, this.text, required this.isActive});

  final bool isActive;

  final String image;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      height: isActive ? 30 : null,
      width: isActive ? 71 : null,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xffEEF8ED) : null,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 3, left: 7),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor:
                  isActive ? FruitsColors.primaryColor : Colors.white,
              child: SvgPicture.asset(
                color: isActive ? Colors.white : null,
                image,
              ),
            ),
            Text(
              text ?? '',
              style: const TextStyle(
                color: FruitsColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
