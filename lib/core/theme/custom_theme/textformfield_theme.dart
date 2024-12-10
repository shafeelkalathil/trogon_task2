import 'package:flutter/material.dart';

import '../../utils/style/text_style.dart';
class AppTextFromFieldTheme {
  AppTextFromFieldTheme._();

  static InputDecorationTheme lightDecoration =  InputDecorationTheme(
    errorMaxLines: 3,
    contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
    prefixIconColor: Colors.black,
    suffixIconColor: Colors.black,
    labelStyle: heading2.copyWith(color: Colors.black),
    hintStyle: heading2.copyWith(color: Colors.black),
    errorStyle: heading2.copyWith(color: Colors.black),
    floatingLabelStyle: heading2.copyWith(color: Colors.black),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      // borderSide: const BorderSide(color: Color(0xff2C2C2E)),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      // borderSide: const BorderSide(color: Color(0xff2C2C2E)),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.red),
    ),
  );
}
