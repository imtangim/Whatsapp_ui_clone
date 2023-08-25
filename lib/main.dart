import 'package:flutter/material.dart';
import 'package:whatsapp_clone/responsive/responsivelayout.dart';
import 'package:whatsapp_clone/screens/mobileScreen.dart';
import 'package:whatsapp_clone/screens/webscreen.dart';

import 'utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const Responsivelayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: WebScreenLayout()),
    );
  }
}
