import 'package:flutter/material.dart';

import '../../../../../core/utils/fruits_colors.dart';
import '../../../../../core/utils/styles/fruits_sytls.dart';

class CustomAuthTextFild extends StatelessWidget {
  const CustomAuthTextFild(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      this.obscureText,
      this.onSaved,
      this.controller,
     });
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final Function(String?)? onSaved;
  final TextEditingController? controller;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: FruitsColors.primaryColor,
      controller: controller,
      onSaved: onSaved,
      onTapOutside: (_) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'يرجي ادخال الحقل السابق ';
        }

        return null;
      },
      obscureText: obscureText ?? false,
      style: FruitsSytls.styleSemiBold16,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: FruitsSytls.styleBold13.copyWith(
          color: const Color(0xff949D9E),
        ),
        suffixIcon: suffixIcon,
        suffixIconColor: const Color(0xff949D9E),
        filled: true,
        fillColor: const Color(0xffF9FAFA),
        border: buildAuthBorder(),
        focusedBorder: buildAuthBorder(),
        enabledBorder: buildAuthBorder(),
      ),
    );
  }
}

OutlineInputBorder buildAuthBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      color: Color(0xffE6E9EA),
    ),
  );
}
