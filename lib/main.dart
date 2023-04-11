import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/views/screens/home/bottomnavi_bar.dart';

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
      home:
          // const SellPersonContact(),
          const BottomNaviBar(),
      builder: (context, child) {
        ScreenUtil.init(context);
        return child!;
      },
    );
  }
}
