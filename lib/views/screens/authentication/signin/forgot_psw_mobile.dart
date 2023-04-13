import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/elevatedbutton.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/contants/svgimage.dart';
import 'package:real_estate/core/contants/textformfield_icon.dart';
import 'package:real_estate/core/utils/colors.dart';

import '../../home/home_page/menu_dashborad_page.dart';

class ForgotPswMobile extends StatefulWidget {
  const ForgotPswMobile({super.key});

  @override
  State<ForgotPswMobile> createState() => _ForgotPswMobileState();
}

class _ForgotPswMobileState extends State<ForgotPswMobile> {
  final _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Sizes.s110.h,
                ),
                SvgPicture.asset(
                  AppAssets.phoneNoLogo,
                  height: Sizes.s108.h,
                  width: Sizes.s108.w,
                ),
                SizedBox(
                  height: Sizes.s40.h,
                ),
                Text(
                  'Enter your number',
                  style: TextStyle(
                      color: ThemeColors().title,
                      fontSize: Sizes.s28.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: Sizes.s130.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Mobile number',
                    style: TextStyle(color: ThemeColors().textColor),
                  ),
                ),
                CtmTextFormFieldWithIcon(
                    labelTextColor: ThemeColors().textColor,
                    prefixIcon: CtmSVGImage(
                      imageheight: Sizes.s17.h,
                      imagewidth: Sizes.s17.w,
                      assetName: AppAssets.phoneIcon,
                      width: Sizes.s30.w,
                    ),
                    hintText: 'Enter Phone Number',
                    hintTextColor: ThemeColors().textColor,
                    controller: _phone),
                SizedBox(
                  height: Sizes.s100.h,
                ),
                CtmElevatedButton(
                    fontWeight: FontWeight.w700,
                    fontSize: Sizes.s20.sp,
                    width: MediaQuery.of(context).size.width,
                    txtColor: ThemeColors().white,
                    text: 'Verify',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MenuDashBoardPage()));
                    }),
                SizedBox(
                  height: Sizes.s94.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
