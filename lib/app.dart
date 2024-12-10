import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/theme/theme.dart';
import 'features/chat/view/chat_view.dart';
import 'features/flash_card/view/add_flash_card.dart';
import 'features/flash_card/view/flash_card_view.dart';
import 'features/subscription/view/subscription_view.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: FlashCardScreen(),
    );
  }
}
