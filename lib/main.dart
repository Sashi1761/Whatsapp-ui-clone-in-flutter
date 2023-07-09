import 'package:flutter/material.dart';
import 'package:whatsappui/colors.dart';
import 'package:whatsappui/responsive/respnosivelayout.dart';
import 'package:whatsappui/screens/mobilescreenlayout.dart';
import 'package:whatsappui/screens/webscreenlayout.dart';

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
      title: 'Whatsapp responsive ui',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home:  responsivedesign(mobileScreenLayout:mobileScreenLayout(), webScreenLayout: webScreenLayout())
    );
  }
  }