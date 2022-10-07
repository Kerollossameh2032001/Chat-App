import 'package:chat_app/chat/presentation/screens/chat_screen.dart';
import 'package:chat_app/core/global/theme/theme_data/theme_data_light.dart';
import 'package:flutter/material.dart';
import 'chat/presentation/screens/chat_home_screen.dart';
import 'outhountication/presentation/screens/login_screen.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: getLightTheme(),
      home: ChatScreen(),
    );
  }
}

