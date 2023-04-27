import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/utils/colors.dart';

class CustomDrawerScreen extends StatefulWidget {
  const CustomDrawerScreen({super.key});

  @override
  State<CustomDrawerScreen> createState() => _CustomDrawerScreenState();
}

class _CustomDrawerScreenState extends State<CustomDrawerScreen> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ScreenUtil().setVerticalSpacing(90),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              children: [
                Container(
                  height: Sizes.s48.h,
                  width: Sizes.s48.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(AppAssets.profilePic),
                        fit: BoxFit.cover,
                      )),
                ),
                ScreenUtil().setHorizontalSpacing(15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Johan Roy',
                      style: TextStyle(
                        fontSize: Sizes.s20.sp,
                        color: ThemeColors.title,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Johanroy@gmail.com',
                      style: TextStyle(
                        fontSize: Sizes.s15.sp,
                        color: ThemeColors.textColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          ScreenUtil().setVerticalSpacing(55),
          ListTile(
            leading: SvgPicture.asset(AppAssets.nameIcon),
            title: Text(
              'My Profile',
              style: TextStyle(
                  fontSize: Sizes.s15.sp, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            selected: selected,
            selectedTileColor: ThemeColors.orange,
            selectedColor: ThemeColors.white,
            // iconColor:
            //     selected == true ? ThemeColors.white : ThemeColors.textColor,
            leading: SvgPicture.asset(AppAssets.bSavedIcon,
                color: selected ? ThemeColors.white : ThemeColors.textColor),
            title: Text(
              'My Favorite',
              style: TextStyle(
                  fontSize: Sizes.s15.sp, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(AppAssets.nameIcon),
            title: Text(
              'Contact',
              style: TextStyle(
                  fontSize: Sizes.s15.sp, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(AppAssets.mypropertyIcon),
            title: Text(
              'My Properties ',
              style: TextStyle(
                  fontSize: Sizes.s15.sp, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(AppAssets.bNotificationIcon),
            title: Text(
              'Notification',
              style: TextStyle(
                  fontSize: Sizes.s15.sp, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(AppAssets.privacypoliceIcon),
            title: Text(
              'Privacy Police',
              style: TextStyle(
                  fontSize: Sizes.s15.sp, fontWeight: FontWeight.w400),
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(AppAssets.logoutIcon),
            title: Text(
              'Log Out',
              style: TextStyle(
                  fontSize: Sizes.s15.sp, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
