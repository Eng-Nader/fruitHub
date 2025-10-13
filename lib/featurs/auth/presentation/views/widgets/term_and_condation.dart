import 'package:flutter/material.dart';
import '../../../../../core/utils/fruits_colors.dart';
import '../../../../../core/utils/styles/fruits_sytls.dart';

class TermAndCondation extends StatelessWidget {
  const TermAndCondation({
    super.key,
    required this.isChecked,
    this.onChanged,
  });

  final bool isChecked;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(10, 0),
      child: Row(
        children: [
          Transform.scale(
            scale: 1.5,
            child: Checkbox(
              side: const BorderSide(
                color: Color(0xffDDDFDF),
                width: 1,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              activeColor: FruitsColors.primaryColor,
              value: isChecked ? true : false,
              onChanged: onChanged,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: FruitsSytls.styleSemiBold13,
                ),
                TextSpan(
                  text: ' الشروط \nوالأحكام الخاصة بنا',
                  style: FruitsSytls.styleSemiBold13.copyWith(
                    color: FruitsColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
