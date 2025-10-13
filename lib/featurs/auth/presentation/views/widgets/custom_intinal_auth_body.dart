import 'package:flutter/material.dart';

import '../../../../../core/constants/constants.dart';

class CustomIntinalAuthBody extends StatelessWidget {
  const CustomIntinalAuthBody({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorzintalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: children,
          ),
        ),
      ),
    );
  }
}
