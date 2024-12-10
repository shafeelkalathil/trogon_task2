import 'package:flutter/material.dart';
import 'package:trogon_task2/core/utils/extension/size_extension.dart';

import '../../../core/constants/color_constant.dart';
import '../../../core/utils/style/text_style.dart';

class CustomButtonTransparent extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const CustomButtonTransparent({
    super.key, required this.title, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: context.screenWidth * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(6),
          border: Border.all(
            color: AppColors.primaryColor,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: heading6.copyWith(color: Colors.black),
          ),
        ),
      ),
    );
  }
}