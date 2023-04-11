import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/utils/colors.dart';

class UploadPropertyScreen extends StatefulWidget {
  const UploadPropertyScreen({super.key});

  @override
  State<UploadPropertyScreen> createState() => _UploadPropertyScreenState();
}

class _UploadPropertyScreenState extends State<UploadPropertyScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            CupertinoIcons.back,
            color: ThemeColors().black,
          ),
          elevation: 0,
          backgroundColor: ThemeColors().white,
          title: Text(
            'Upload Property',
            style: TextStyle(
                color: ThemeColors().black,
                fontWeight: FontWeight.w600,
                fontSize: Sizes.s20.sp),
          ),
          bottom: TabBar(
              unselectedLabelColor: ThemeColors().textColor,
              unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: Sizes.s15.sp,
                  color: ThemeColors().textColor),
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: Sizes.s15.sp,
                  color: ThemeColors().themeColor),
              labelColor: ThemeColors().themeColor,
              indicatorColor: ThemeColors().transparent,
              tabs: const [
                Tab(
                  child: Text(
                    'Overview',
                  ),
                ),
                Tab(
                  child: Text(
                    'Location',
                  ),
                ),
                Tab(
                  child: Text(
                    'Photos',
                  ),
                )
              ]),
        ),
        body: Column(),
      ),
    );
  }
}
