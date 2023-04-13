import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/elevatedbutton.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/contants/svgimage.dart';
import 'package:real_estate/core/contants/textbutton.dart';
import 'package:real_estate/core/contants/textformfield_icon.dart';
import 'package:real_estate/core/utils/colors.dart';

class SellPersonContact extends StatefulWidget {
  const SellPersonContact({super.key});

  @override
  State<SellPersonContact> createState() => _SellPersonContactState();
}

class _SellPersonContactState extends State<SellPersonContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ScreenUtil().setVerticalSpacing(80),
                SvgPicture.asset(AppAssets.sellerform),
                ScreenUtil().setVerticalSpacing(70),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Name',
                    style: TextStyle(color: ThemeColors().textColor),
                  ),
                ),
                CtmTextFormFieldWithIcon(
                  keyboardType: TextInputType.name,
                  labelTextColor: ThemeColors().textColor,
                  prefixIcon: CtmSVGImage(
                    imageheight: Sizes.s17.h,
                    imagewidth: Sizes.s17.w,
                    assetName: AppAssets.nameIcon,
                    width: Sizes.s20.w,
                    height: Sizes.s20.h,
                  ),
                  hintText: 'Enter your name',
                  hintTextColor: ThemeColors().textColor,
                  // controller: _phone
                ),
                ScreenUtil().setVerticalSpacing(30),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Mobile number',
                    style: TextStyle(color: ThemeColors().textColor),
                  ),
                ),
                CtmTextFormFieldWithIcon(
                  keyboardType: TextInputType.phone,
                  labelTextColor: ThemeColors().textColor,
                  prefixIcon: CtmSVGImage(
                    imageheight: Sizes.s16.h,
                    imagewidth: Sizes.s16.w,
                    assetName: AppAssets.phoneIcon,
                    width: Sizes.s30.w,
                  ),
                  hintText: 'Enter mobile number',
                  hintTextColor: ThemeColors().textColor,
                  // controller: _email
                ),
                ScreenUtil().setVerticalSpacing(30),
                Row(
                  children: [
                    Text(
                      'Number of Properties',
                      style: TextStyle(color: ThemeColors().textColor),
                    ),
                    ScreenUtil().setHorizontalSpacing(15),
                    Flexible(
                      child: CtmTextFormFieldWithIcon(
                        keyboardType: TextInputType.phone,
                        labelTextColor: ThemeColors().textColor,

                        hintTextColor: ThemeColors().textColor,
                        // controller: _email
                      ),
                    ),
                  ],
                ),
                ScreenUtil().setVerticalSpacing(70),
                CtmElevatedButton(
                    fontWeight: FontWeight.w700,
                    fontSize: Sizes.s20.sp,
                    width: MediaQuery.of(context).size.width,
                    txtColor: ThemeColors().white,
                    text: 'Submit',
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            _buildPopupDialog(context),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      title: const Text(
        'Thank you',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Divider(
            height: 1,
            indent: 36,
            endIndent: 36,
          ),
          ScreenUtil().setVerticalSpacing(12),
          const Text(
            "Our contact person will contact you in 2-3 days.",
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: <Widget>[
        Center(
          child: Container(
            height: Sizes.s34.h,
            width: Sizes.s83.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ThemeColors().themeColor),
            child: Center(
              child: CtmTextButton(
                text: 'Ok',
                fontcolor: ThemeColors().white,
                fontSize: Sizes.s16,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
