import 'package:flutter/material.dart';
import '../../../core/utils/style/text_style.dart';
import '../../chat/view/chat_view.dart';
import '../widgets/flash_card.dart';

class FlashCardScreen extends StatelessWidget {
  const FlashCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flash Card",style: heading3.copyWith(color: Colors.black),),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatScreen(),));
          }, icon: const Icon(Icons.add,size: 40,))
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: OutlinedButton(
            onPressed: () {
            },
            style: OutlinedButton.styleFrom(
              shape: const CircleBorder(),
              side: const BorderSide(color: Color(0xffECECEC), width: 2),
              padding: const EdgeInsets.only(left: 10),
              backgroundColor: Colors.white,
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 24,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                TextFormField(
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF0F0F0),
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search'
                  ),
                ),
                const SizedBox(height: 20,),
                ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return const FlashCard();
                  },
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}


