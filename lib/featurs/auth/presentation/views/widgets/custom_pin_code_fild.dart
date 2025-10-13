import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../../core/utils/fruits_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeFild extends StatelessWidget {
  const CustomPinCodeFild({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      keyboardType: TextInputType.number,
      appContext: context,
      length: 4,
      enableActiveFill: true,
      textStyle: const TextStyle(color: Colors.black),
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(16),
        fieldHeight: 60,
        fieldWidth: 70,
        activeFillColor: const Color(0xffE6E9EA),
        inactiveFillColor: const Color(0xffE6E9EA),
        selectedFillColor: FruitsColors.lightPrimaryColor,
        borderWidth: 1,
        activeColor: Colors.transparent,
        inactiveColor: Colors.transparent,
        selectedColor: Colors.transparent,
      ),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    );
  }
}
