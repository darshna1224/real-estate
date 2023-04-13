import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/utils/colors.dart';

class ViewApartmentList extends StatefulWidget {
  const ViewApartmentList({super.key});

  @override
  State<ViewApartmentList> createState() => _ViewApartmentListState();
}

class _ViewApartmentListState extends State<ViewApartmentList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors().bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ScreenUtil().setVerticalSpacing(20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: ThemeColors().grey.withOpacity(0.5),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                            offset: Offset(
                              5.0,
                              8.0,
                            ))
                      ],
                      borderRadius: BorderRadius.circular(Sizes.s12.r),
                      color: ThemeColors().white),
                  height: Sizes.s35.h,
                  width: Sizes.s35.w,
                  child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                        AppAssets.backArrow,
                        color: ThemeColors().black,
                      )),
                ),
              ),
            ),
            ScreenUtil().setVerticalSpacing(20.0),
            Expanded(
              child: SizedBox(
                child: GlowingOverscrollIndicator(
                  axisDirection: AxisDirection.down,
                  color: Colors.white10,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return ScreenUtil().setVerticalSpacing(20.0);
                    },
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: ThemeColors().white,
                                borderRadius:
                                    BorderRadius.circular(Sizes.s15.r)),
                            height: Sizes.s265.h,
                            width: Sizes.s177.h,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(Sizes.s15.r),
                                      topRight: Radius.circular(Sizes.s15.r)),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: Sizes.s157.w,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/image/download3.jpeg',
                                                ),
                                                fit: BoxFit.cover)),
                                      ),
                                      Positioned(
                                        top: 15,
                                        right: 20,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Sizes.s5.r),
                                              color: ThemeColors()
                                                  .white
                                                  .withOpacity(0.5)),
                                          height: Sizes.s25.h,
                                          width: Sizes.s25.w,
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Icon(
                                              CupertinoIcons.bookmark_fill,
                                              size: 15,
                                              color: ThemeColors().white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                ScreenUtil().setVerticalSpacing(Sizes.s12.h),
                                Row(
                                  children: [
                                    ScreenUtil().setHorizontalSpacing(24.0),
                                    Flexible(
                                      child: Text(
                                        '\$24,532',
                                        // 'Studio Apartment',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: ThemeColors().orange,
                                            fontWeight: FontWeight.w700,
                                            fontSize: Sizes.s18.sp),
                                      ),
                                    ),
                                    ScreenUtil().setHorizontalSpacing(7),
                                    Expanded(
                                      child: Text(
                                        'Studio Apartment',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: Sizes.s14.sp,
                                            color: ThemeColors().textColor),
                                      ),
                                    ),
                                    ScreenUtil().setHorizontalSpacing(24.0)
                                  ],
                                ),
                                ScreenUtil().setVerticalSpacing(18.0),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          SvgPicture.asset(
                                            AppAssets.bedIcon,
                                            height: 18,
                                            width: 21,
                                            color:
                                                Color.fromARGB(255, 22, 0, 0),
                                          ),
                                          ScreenUtil().setVerticalSpacing(7),
                                          RichText(
                                              text: TextSpan(
                                                  style: TextStyle(
                                                      color: ThemeColors()
                                                          .textColor),
                                                  children: const [
                                                TextSpan(text: '3'),
                                                TextSpan(text: ' Bed'),
                                              ]))
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          SvgPicture.asset(
                                            AppAssets.bathIcon,
                                            height: 18,
                                            width: 21,
                                            color: ThemeColors().title,
                                          ),
                                          ScreenUtil().setVerticalSpacing(7),
                                          RichText(
                                              text: TextSpan(
                                                  style: TextStyle(
                                                      color: ThemeColors()
                                                          .textColor),
                                                  children: const [
                                                TextSpan(text: '2'),
                                                TextSpan(text: ' Bath'),
                                              ]))
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          SvgPicture.asset(
                                            AppAssets.carIcon,
                                            height: 18,
                                            width: 21,
                                            color: ThemeColors().title,
                                          ),
                                          ScreenUtil().setVerticalSpacing(7),
                                          RichText(
                                              text: TextSpan(
                                                  style: TextStyle(
                                                      color: ThemeColors()
                                                          .textColor),
                                                  children: const [
                                                TextSpan(text: '2'),
                                                TextSpan(text: ' Parking'),
                                              ]))
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
