import 'package:flutter/material.dart';
import 'package:trogon_task2/core/utils/extension/size_extension.dart';

import '../../../core/utils/style/text_style.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool leadingIcon;
  const CustomButton({
    super.key, required this.title, this.onTap,this.leadingIcon=false
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: context.screenWidth * 0.35,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xffA40DEE),
              Color(0xff940CD6),
            ],
          ),
          borderRadius: BorderRadiusDirectional.circular(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(leadingIcon)const Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
            if(leadingIcon)const SizedBox(width: 10),
            Text(
              title,
              style: heading6.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}