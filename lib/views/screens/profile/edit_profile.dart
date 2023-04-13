import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/elevatedbutton.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/contants/textbutton.dart';
import 'package:real_estate/core/utils/colors.dart';
import 'package:real_estate/views/screens/home/detailapatment_sccreen.dart';
import 'package:real_estate/views/screens/home/home_page/view_apartment_list.dart';
import 'package:real_estate/views/screens/home/home_page/view_property_list.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ScreenUtil().setVerticalSpacing(20.0),
                Text(
                  'My Profile',
                  style: TextStyle(
                      color: ThemeColors().black,
                      fontSize: Sizes.s25.sp,
                      fontWeight: FontWeight.w600),
                ),
                ScreenUtil().setVerticalSpacing(30.0),
                Container(
                  height: Sizes.s130.h,
                  width: Sizes.s130.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: ThemeColors().orange, width: 2),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/image/profilepic.png'))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
