import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/elevatedbutton.dart';
import 'package:real_estate/core/contants/svgimage.dart';
import 'package:real_estate/core/contants/textformfield_icon.dart';
import 'package:real_estate/core/utils/colors.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/views/screens/authentication/signin/forgot_psw_mobile.dart';

class ForgotPswNew extends StatefulWidget {
  const ForgotPswNew({super.key});

  @override
  State<ForgotPswNew> createState() => _ForgotPswNewState();
}

class _ForgotPswNewState extends State<ForgotPswNew> {
  final _password = TextEditingController();
  final _confirmpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Sizes.s110.h,
                ),
                SvgPicture.asset(
                  AppAssets.newPswLogo,
                  height: Sizes.s108.h,
                  width: Sizes.s108.w,
                ),
                SizedBox(
                  height: Sizes.s40.h,
                ),
                Text(
                  'Enter Your',
                  style: TextStyle(
                      color: ThemeColors().title,
                      fontSize: Sizes.s25.sp,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'New Password',
                  style: TextStyle(
                      color: ThemeColors().title,
                      fontSize: Sizes.s25.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: Sizes.s40.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Password',
                    style: TextStyle(color: ThemeColors().textColor),
                  ),
                ),
                CtmTextFormFieldWithIcon(
                    keyboardType: TextInputType.visiblePassword,
                    labelTextColor: ThemeColors().textColor,
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: CtmSVGImage(
                            height: Sizes.s30.h,
                            width: Sizes.s30.w,
                            imageheight: Sizes.s15.h,
                            imagewidth: Sizes.s15.w,
                            alignment: Alignment.centerRight,
                            assetName: AppAssets.pswVisibleIcon)),
                    prefixIcon: CtmSVGImage(
                      imageheight: Sizes.s17.h,
                      imagewidth: Sizes.s17.w,
                      assetName: AppAssets.pswIcon,
                      width: Sizes.s30.w,
                    ),
                    hintText: 'Enter Password',
                    hintTextColor: ThemeColors().textColor,
                    controller: _password),
                SizedBox(
                  height: Sizes.s30.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Confirm New Password',
                    style: TextStyle(color: ThemeColors().textColor),
                  ),
                ),
                CtmTextFormFieldWithIcon(
                    keyboardType: TextInputType.visiblePassword,
                    labelTextColor: ThemeColors().textColor,
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: CtmSVGImage(
                            alignment: Alignment.centerRight,
                            height: Sizes.s30.h,
                            width: Sizes.s30.w,
                            imageheight: Sizes.s15.h,
                            imagewidth: Sizes.s15.w,
                            assetName: AppAssets.pswVisibleIcon)),
                    prefixIcon: CtmSVGImage(
                      imageheight: Sizes.s17.h,
                      imagewidth: Sizes.s17.w,
                      assetName: AppAssets.pswIcon,
                      width: Sizes.s30.w,
                    ),
                    hintText: 'Enter Confirm New Password',
                    hintTextColor: ThemeColors().textColor,
                    controller: _confirmpassword),
                SizedBox(
                  height: Sizes.s80.h,
                ),
                CtmElevatedButton(
                    borderColor: ThemeColors().transparent,
                    fontWeight: FontWeight.w700,
                    fontSize: Sizes.s20.sp,
                    width: MediaQuery.of(context).size.width,
                    btnColor: ThemeColors().themeColor,
                    txtColor: ThemeColors().white,
                    text: 'Submit',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPswMobile()));
                    }),
                SizedBox(
                  height: Sizes.s24.h,
                ),
                SizedBox(
                  height: Sizes.s40.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
