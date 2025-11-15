import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruithub/core/utils/fruits_assets.dart';
import 'package:fruithub/core/utils/fruits_colors.dart';
import 'package:fruithub/featurs/home/presentation/widgets/home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const HomeHeader(),
              const SizedBox(
                height: 16,
              ),
              TextField(
                cursorColor: FruitsColors.lightPrimaryColor,
                decoration: InputDecoration(
                  suffixIcon: SvgPicture.asset(FruitsAssets.setting),
                  filled: true,
                  fillColor: Colors.white,
                  border: buildBorder(),
                  focusedBorder: buildBorder(),
                  enabledBorder: buildBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.white));
  }
}
