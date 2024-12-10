import 'package:flutter/material.dart';
import 'package:trogon_task2/core/utils/extension/size_extension.dart';
import '../../../core/utils/style/text_style.dart';
import '../../shared/widgets/custom_button.dart';
import '../../shared/widgets/custom_transparent_button.dart';
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
          color: const Color(0xffFFFCF0),
          borderRadius: BorderRadiusDirectional.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 8),
            ),
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 14),
            ),
          ],
        ),
        padding: const EdgeInsets.all(20),
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
                const Icon(Icons.more_vert),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Master common expressions used in\n daily conversations.',
              style: heading5.copyWith(color: const Color(0xff8B8585)),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                CustomButton(title: "Add Card",onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AddFlashCardScreen(title: 'Everyday Phrases'),));
                },leadingIcon: true),
                const SizedBox(width: 20),
                CustomButtonTransparent(title: "Practice",onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SubscriptionScreen(),));
                },),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

