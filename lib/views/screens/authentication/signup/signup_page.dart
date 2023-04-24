import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/elevatedbutton.dart';
import 'package:real_estate/core/contants/svgimage.dart';
import 'package:real_estate/core/contants/textbutton.dart';
import 'package:real_estate/core/contants/textformfield_icon.dart';
import 'package:real_estate/core/utils/colors.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/utils/validtor.dart';
import 'package:real_estate/views/screens/authentication/signin/login_page.dart';
import 'package:real_estate/views/screens/authentication/signup/otp_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formkey = GlobalKey<FormState>();

  final _name = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Sizes.s90.h,
                  ),
                  Image.asset(
                    AppAssets.signUpLogo,
                    height: Sizes.s108.h,
                    width: Sizes.s108.w,
                  ),
                  SizedBox(
                    height: Sizes.s20.h,
                  ),
                  Text(
                    'SignUp',
                    style: TextStyle(
                        color: ThemeColors.title,
                        fontSize: Sizes.s30.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: Sizes.s60.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Name',
                      style: TextStyle(color: ThemeColors.textColor),
                    ),
                  ),
                  CtmTextFormFieldWithIcon(
                    keyboardType: TextInputType.name,
                    labelTextColor: ThemeColors.textColor,
                    prefixIcon: CtmSVGImage(
                      imageheight: Sizes.s17.h,
                      imagewidth: Sizes.s17.w,
                      assetName: AppAssets.nameIcon,
                      width: Sizes.s30.w,
                    ),
                    hintText: 'Enter your name',
                    hintTextColor: ThemeColors.textColor,
                    controller: _name,
                    validator: (value) =>
                        Validation.nameValidation(value.toString()),
                  ),
                  SizedBox(
                    height: Sizes.s30.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email address',
                      style: TextStyle(color: ThemeColors.textColor),
                    ),
                  ),
                  CtmTextFormFieldWithIcon(
                    keyboardType: TextInputType.emailAddress,
                    labelTextColor: ThemeColors.textColor,
                    prefixIcon: CtmSVGImage(
                      imageheight: Sizes.s16.h,
                      imagewidth: Sizes.s16.w,
                      assetName: AppAssets.emailIcon,
                      width: Sizes.s30.w,
                    ),
                    hintText: 'Enter email address',
                    hintTextColor: ThemeColors.textColor,
                    controller: _email,
                    validator: (value) =>
                        Validation.emailidValidation(value.toString()),
                  ),
                  SizedBox(
                    height: Sizes.s30.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Phone Number',
                      style: TextStyle(color: ThemeColors.textColor),
                    ),
                  ),
                  CtmTextFormFieldWithIcon(
                      keyboardType: TextInputType.phone,
                      labelTextColor: ThemeColors.textColor,
                      prefixIcon: CtmSVGImage(
                        imageheight: Sizes.s17.h,
                        imagewidth: Sizes.s17.w,
                        assetName: AppAssets.phoneIcon,
                        width: Sizes.s20.w,
                        height: Sizes.s20.h,
                      ),
                      hintText: 'Enter  Phone Number',
                      hintTextColor: ThemeColors.textColor,
                      controller: _phone,
                      validator: (value) =>
                          Validation.phoneValidation(value.toString())),
                  SizedBox(
                    height: Sizes.s50.h,
                  ),
                  CtmElevatedButton(
                      fontWeight: FontWeight.w700,
                      borderColor: ThemeColors.transparent,
                      fontSize: Sizes.s20.sp,
                      width: MediaQuery.of(context).size.width,
                      btnColor: ThemeColors.themeColor,
                      txtColor: ThemeColors.white,
                      text: 'Sign Up',
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OtpScreen()));
                        }
                      }),
                  SizedBox(
                    height: Sizes.s16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: Sizes.s14.sp,
                          color: ThemeColors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: Sizes.s4.w,
                      ),
                      CtmTextButton(
                          fontWeight: FontWeight.w700,
                          fontSize: Sizes.s14.sp,
                          text: 'Sign in',
                          fontcolor: ThemeColors.orange,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          }),
                    ],
                  ),
                  ScreenUtil().setVerticalSpacing(10)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
