import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/utils/colors.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
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
                    'Filters',
                    style: TextStyle(
                        color: ThemeColors().black,
                        fontSize: Sizes.s25.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
