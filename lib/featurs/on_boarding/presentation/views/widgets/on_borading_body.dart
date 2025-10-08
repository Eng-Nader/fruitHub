import 'dart:developer';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruithub/core/constants/constants.dart';
import 'package:fruithub/core/utils/fruits_colors.dart';
import 'package:fruithub/core/utils/widgets/basic_button.dart';
import 'package:fruithub/featurs/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoradingBody extends StatefulWidget {
  const OnBoradingBody({super.key});

  @override
  State<OnBoradingBody> createState() => _OnBoradingBodyState();
}

class _OnBoradingBodyState extends State<OnBoradingBody> {

  
  

  @override
  Widget build(BuildContext context) {
 
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          child: OnBoradingPageView(
            
          ),
        ),
     
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorzintalPadding,
            vertical: 43,
          ),
          child: BasicButton(
            onPressed: () {},
            title: 'ابدا الان ',
          ),
        )
      ],
    );
  }
}
