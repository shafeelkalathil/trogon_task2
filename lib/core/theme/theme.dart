import 'package:flutter/material.dart';
import 'package:trogon_task2/core/constants/color_constant.dart';

import 'custom_theme/textformfield_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      primaryColor: AppColors.primaryColor,
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      inputDecorationTheme: AppTextFromFieldTheme.lightDecoration,
      scaffoldBackgroundColor: Colors.white,
      dialogBackgroundColor: const Color(0xffffffff));

}
