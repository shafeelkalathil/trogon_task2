import 'package:flutter/material.dart';
import 'package:trogon_task2/core/utils/extension/size_extension.dart';
import '../../../core/constants/color_constant.dart';
import '../../../core/utils/style/text_style.dart';
import '../../subscription/view/subscription_view.dart';
import '../view/add_flash_card.dart';

class FlashCard extends StatelessWidget {
  const FlashCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:20),
      child: Container(
        width: context.screenWidth * 0.9,
        decoration: BoxDecoration(
          color: Color(0xffFFFCF0),
          borderRadius: BorderRadiusDirectional.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: Offset(0, 8),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: Offset(0, 14),
            ),
          ],
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Everyday Phrases',
                  style: heading4.copyWith(color: Colors.black),
                ),
                Icon(Icons.more_vert),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Master common expressions used in\n daily conversations.',
              style: heading5.copyWith(color: Color(0xff8B8585)),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddFlashCardScreen(title: 'Everyday Phrases'),));
                  },
                  child: Container(
                    height: 40,
                    width: context.screenWidth * 0.35,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
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
                        Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Add Card",
                          style: heading6.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SubscriptionScreen(),));
                  },
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
                        "Practice",
                        style: heading6.copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}