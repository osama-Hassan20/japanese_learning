import 'package:flutter/material.dart';
import 'package:japanese_learning/screens/home_screen.dart';
import 'package:japanese_learning/screens/splash_screen.dart';



void main()
{
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'splash',
      routes:
      {
        'splash' : (context) => const SplashScreen(),
        'Home' : (context) =>  HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}