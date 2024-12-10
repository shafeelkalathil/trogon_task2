
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trogon_task2/core/constants/image_constants.dart';

import '../../../core/utils/style/text_style.dart';
import '../widgets/bubble_textmessage.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    super.key,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final TextEditingController messageController = TextEditingController();

  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool isPlaying = false;
  bool isLoading = false;
  bool isPause = false;

  DateTime now =  DateTime.now();

  List<Widget> messages = [

    const BubbleTextMessage(
      text: 'Lorem Ipsum is simply dummy ',
      isSender: false,
    ),
    const BubbleTextMessage(
      text: 'Lorem Ipsum is simply dummy ',
      isSender: true,
    ),
    const BubbleTextMessage(
      text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry ',
      isSender: false,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Image.asset(AppImages.chatAvatar2),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("JOHN DOE",style: heading3.copyWith(color: Colors.black),),
                  Text("Online",style: heading5.copyWith(color: const Color(0xffA40DEE)),),
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert,size: 40,))
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: OutlinedButton.styleFrom(
              shape: const CircleBorder(),
              side: const BorderSide(color: Color(0xffECECEC), width: 2),
              padding: const EdgeInsets.only(left: 1),
              backgroundColor: Colors.white,
            ),
            child: const Icon(
              Icons.close,
              color: Colors.black,
              size: 24,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                padding: const EdgeInsets.all(8),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return messages[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
