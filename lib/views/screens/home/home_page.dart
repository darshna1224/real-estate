import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../core/contants/app_assets.dart';
import '../../../core/contants/sizes.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen(
      {super.key, required this.openDrawer, required this.controller});

  bool openDrawer;
  final AnimationController controller;

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  // bool openDrawer = true;
  //
  // final Duration duration = const Duration(milliseconds: 300);
  //
  // late AnimationController _controller;
  //
  // late Animation<double> _Scaleanimation;
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   _controller = AnimationController(vsync: this, duration: duration);
  //   _Scaleanimation = Tween<double>(begin: 1, end: 0.6).animate(_controller);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ScreenUtil().setVerticalSpacing(55),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    if (widget.openDrawer) {
                      widget.controller.forward();
                    } else {
                      widget.controller.reverse();
                    }
                    widget.openDrawer = !widget.openDrawer;
                  });
                },
                icon: Icon(Icons.menu),
              ),
              Container(
                height: Sizes.s48.h,
                width: Sizes.s48.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(AppAssets.profilePic),
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
