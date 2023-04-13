import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/elevatedbutton.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/contants/textbutton.dart';
import 'package:real_estate/core/contants/textformfield.dart';
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ScreenUtil().setVerticalSpacing(20.0),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          height: Sizes.s35.h,
                          width: Sizes.s35.w,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              AppAssets.backArrow,
                              color: ThemeColors().black,
                            ),
                          ),
                        ),
                      ),
                      ScreenUtil().setHorizontalSpacing(30.0),
                      Text(
                        'My Profile',
                        style: TextStyle(
                            color: ThemeColors().black,
                            fontSize: Sizes.s25.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  ScreenUtil().setVerticalSpacing(30.0),
                  Container(
                    height: Sizes.s130.h,
                    width: Sizes.s130.w,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: ThemeColors().orange, width: 2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/image/profilepic.png'),
                            fit: BoxFit.cover)),
                  ),
                  ScreenUtil().setVerticalSpacing(80.0),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'FullName',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: Sizes.s16.sp,
                            color: ThemeColors().textgrey),
                      )),
                  CtmTextFormField(
                    keyboardType: TextInputType.name,
                    hintText: 'Johan Roy',
                    hintTextColor: ThemeColors().blackText,
                    hintFontSize: 16,
                    hintFontWeight: FontWeight.w600,
                  ),
                  ScreenUtil().setVerticalSpacing(20.0),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Mobile Number',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: Sizes.s16.sp,
                            color: ThemeColors().textgrey),
                      )),
                  CtmTextFormField(
                    keyboardType: TextInputType.phone,
                    hintText: '+91 98765 4321',
                    hintTextColor: ThemeColors().blackText,
                    hintFontSize: 16,
                    hintFontWeight: FontWeight.w600,
                  ),
                  ScreenUtil().setVerticalSpacing(Sizes.s130.h),
                  Row(
                    children: [
                      Flexible(
                        child: CtmElevatedButton(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            elevation: 0,
                            borderColor: ThemeColors().themeColor,
                            txtColor: ThemeColors().themeColor,
                            text: 'Not Save',
                            btnColor: ThemeColors().white,
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                      ScreenUtil().setHorizontalSpacing(17.0),
                      Flexible(
                        child: CtmElevatedButton(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            elevation: 0,
                            borderColor: ThemeColors().transparent,
                            txtColor: ThemeColors().white,
                            text: 'Submit',
                            btnColor: ThemeColors().themeColor,
                            onPressed: () {}),
                      )
                    ],
                  ),
                  ScreenUtil().setVerticalSpacing(20.0)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
