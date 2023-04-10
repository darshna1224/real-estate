import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/utils/colors.dart';

class UploadPropertyScreen extends StatefulWidget {
  const UploadPropertyScreen({super.key});

  @override
  State<UploadPropertyScreen> createState() => _UploadPropertyScreenState();
}

class _UploadPropertyScreenState extends State<UploadPropertyScreen> {
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
          bottom: TabBar(tabs: [
            Tab(
              // text: 'Overview',
              child: Text(
                'Overview',
                style: TextStyle(color: ThemeColors().textColor),
              ),
            ),
            Tab(
              child: Text(
                'Location',
                style: TextStyle(color: ThemeColors().textColor),
              ),
              // text: 'Location',
            ),
            Tab(
              child: Text(
                'Photos',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: Sizes.s15.sp,
                    color: ThemeColors().textColor),
              ),
              // text: 'Photos',
            )
          ]),
        ),
        body: Column(),
      ),
    );
  }
}
