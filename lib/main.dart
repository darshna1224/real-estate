import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:get/get.dart';
import 'package:real_estate/models/bottombarview_model.dart';
import 'package:real_estate/views/screens/home/filter.dart';
import 'package:real_estate/views/screens/splash/splash_screen.dart';

import 'views/screens/home/bottomnavi_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    BottomBarViewModel _barViewModel = Get.put(BottomBarViewModel());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Karla'),
      home:
          // FilterScreen(),
          const SplashScreen(),
      // UploadPropertyScreen(),
      // const SellPersonContact(),
      // const BottomBar(),
      builder: (context, child) {
        ScreenUtil.init(context);

        return child!;
      },
    );
  }
}
