import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/utils/colors.dart';
import 'package:real_estate/views/screens/upload_property/location_screen.dart';
import 'package:real_estate/views/screens/upload_property/overview.dart';
import 'package:real_estate/views/screens/upload_property/photos.dart';

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
          leading: Padding(
            padding: const EdgeInsets.all(17.0),
            child: Container(
              height: 18,
              width: 20,
              child: SvgPicture.asset(
                AppAssets.backArrow,
                color: ThemeColors().black,
              ),
            ),
          ),
          elevation: 6,
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
        body: TabBarView(
          children: [OverviewScreen(), LocationScreen(), PhotoScreen()],
        ),
      ),
    );
  }
}
