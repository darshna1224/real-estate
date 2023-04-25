import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/elevatedbutton.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/contants/textformfield.dart';
import 'package:real_estate/core/utils/colors.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                color: ThemeColors.black,
                              ),
                            ),
                          ),
                        ),
                        ScreenUtil().setHorizontalSpacing(20.0),
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                              color: ThemeColors.black,
                              fontSize: Sizes.s23.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    ScreenUtil().setVerticalSpacing(30.0),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            height: Sizes.s130.h,
                            width: Sizes.s130.w,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: ThemeColors.orange, width: 3),
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/image/profilepic.png'),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: Sizes.s36.h,
                                width: Sizes.s36.w,
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ThemeColors.white, width: 3),
                                  shape: BoxShape.circle,
                                  color: ThemeColors.orange,
                                ),
                                child: SvgPicture.asset(AppAssets.cameraIcon),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    ScreenUtil().setVerticalSpacing(80.0),
                    Text(
                      'FullName',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: Sizes.s15.sp,
                          color: ThemeColors.textgrey),
                    ),
                    CtmTextFormField(
                      keyboardType: TextInputType.name,
                      hintText: 'Johan Roy',
                      hintTextColor: ThemeColors.blackText,
                      hintFontSize: Sizes.s15.sp,
                      hintFontWeight: FontWeight.w600,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter your name';
                        }
                      },
                    ),
                    ScreenUtil().setVerticalSpacing(20.0),
                    Text(
                      'Email',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: Sizes.s15.sp,
                          color: ThemeColors.textgrey),
                    ),
                    CtmTextFormField(
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'Johanroy@gmail.com',
                      hintTextColor: ThemeColors.blackText,
                      hintFontSize: Sizes.s15.sp,
                      hintFontWeight: FontWeight.w600,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !value.contains('@')) {
                          return 'Enter email ID';
                        }
                        if (!value.contains('@')) {
                          return 'Enter valid email ID';
                        }
                      },
                    ),
                    ScreenUtil().setVerticalSpacing(20.0),
                    Text(
                      'Mobile Number',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: Sizes.s15.sp,
                          color: ThemeColors.textgrey),
                    ),
                    CtmTextFormField(
                      keyboardType: TextInputType.phone,
                      hintText: '+91 98765 4321',
                      hintTextColor: ThemeColors.blackText,
                      hintFontSize: Sizes.s15.sp,
                      hintFontWeight: FontWeight.w600,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter phone number';
                        }
                        if (value.length != 10) {
                          return 'Enter correct phone number';
                        }
                      },
                    ),
                    ScreenUtil().setVerticalSpacing(Sizes.s70.h),
                    Row(
                      children: [
                        Flexible(
                          child: CtmElevatedButton(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              elevation: 0,
                              borderColor: ThemeColors.themeColor,
                              txtColor: ThemeColors.themeColor,
                              text: 'Not Save',
                              btnColor: ThemeColors.white,
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
                              borderColor: ThemeColors.transparent,
                              txtColor: ThemeColors.white,
                              text: 'Submit',
                              btnColor: ThemeColors.themeColor,
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  Navigator.pop(context);
                                }
                              }),
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
      ),
    );
  }
}

// class ApartmentFilter {
//   final Icon icon;
//   final String title;

//   ApartmentFilter({required this.icon, required this.title});
// }

// List<ApartmentFilter> listApartment = [
//   ApartmentFilter(icon: icon, title: title)
// ];
