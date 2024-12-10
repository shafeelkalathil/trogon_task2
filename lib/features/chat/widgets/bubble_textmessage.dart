import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/image_constants.dart';
import '../../../core/utils/style/text_style.dart';

class BubbleTextMessage extends StatelessWidget {

  const BubbleTextMessage({
    required this.text,super.key,
    this.isSender = true,
  });

  final bool isSender;
  final String text;


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Align(
        alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
        child: Row(
          mainAxisAlignment:
          isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display the CircleAvatar on the left for receiver, on the right for sender
            if (!isSender) Image.asset(AppImages.chatAvatar2),
            if (!isSender) const SizedBox(width: 8), // Space between avatar and text

            Column(
              crossAxisAlignment: isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    Container(
                      color: Colors.transparent,
                      constraints:
                          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * .8),
                      // margin: margin,
                      // padding: padding,
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            color: isSender ? Colors.grey : const Color(0xff122E57),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(isSender ? 24 : 0),
                              topRight: Radius.circular(!isSender ? 24 : 0),
                              bottomLeft: const Radius.circular(24),
                              bottomRight: const Radius.circular(24),
                            ),
                          ),
                          child: Padding(
                            padding:const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                            child: SelectableText(
                              text,
                              style: heading2.copyWith(color: isSender ? Colors.black : Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
            // Space between text and avatar
            if (isSender) const SizedBox(width: 8),
            if (isSender) const CircleAvatar(radius: 17,backgroundColor: Colors.black,), // Avatar for sender on the right
          ],
        ),
      ),
    );
  }
}
