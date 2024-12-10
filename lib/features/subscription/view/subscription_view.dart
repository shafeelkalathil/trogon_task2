import 'package:flutter/material.dart';
import 'package:trogon_task2/core/constants/color_constant.dart';
import 'package:trogon_task2/core/utils/extension/size_extension.dart';

import '../../../core/utils/style/text_style.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child:  Container(
              width: context.screenWidth,
              height: context.screenHeight*0.45,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xffA40DEE),
                    Color(0xffE3B4FA),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20,right:20,top:context.screenWidth*0.18 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: IconButton(onPressed: () {
                                Navigator.pop(context);
                              }, icon: const Icon(Icons.close,color: Colors.white,size: 20,)),
                            )
                          ],
                        ),
                        Text("UPGRADE",style: heading1.copyWith(color: Colors.white),),
                        SizedBox(height: 10,),
                        Text("Unlock premium features and take your English skills to the next level.",
                          style: heading2.copyWith(color: Colors.white),),
                        SizedBox(height: context.screenHeight*0.1,),
                        Row(
                          children: [
                            ElevatedButton(onPressed: () {}, child: Center(child: Text("Basic"),)),
                            SizedBox(width: 15,),
                            ElevatedButton(onPressed: () {}, child: Center(child: Text("Gold"),)),
                            SizedBox(width: 15,),
                            ElevatedButton(onPressed: () {}, child: Center(child: Text("Platinum"),))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: context.screenWidth,
            height: context.screenHeight*0.15,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 1
                )
              ],
              color: Colors.white
            ),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('₹ 4500',style: heading1.copyWith(color: Colors.black),),
                  Text('For 3 months plan',style: heading5.copyWith(color: Color(0xff8B8585)),),
                  ],
                ),
                InkWell(
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
                    child: Center(
                      child: Text(
                        "Buy Now",
                        style: heading6.copyWith(color: Colors.white),
                      ),
                    ),
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



