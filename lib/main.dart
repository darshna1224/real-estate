import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/views/screens/authentication/signin/login_page.dart';
import 'package:real_estate/views/screens/home/bottombar.dart';
import 'package:real_estate/views/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Karla'),
      home: SplashScreen(),
      // const SellPersonContact(),
      // const BottomBar(),
      builder: (context, child) {
        ScreenUtil.init(context);
        return child!;
      },
    );
  }
}
