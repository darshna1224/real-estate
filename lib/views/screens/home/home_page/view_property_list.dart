import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/utils/colors.dart';

class ViewPropertyList extends StatefulWidget {
  const ViewPropertyList({super.key});

  @override
  State<ViewPropertyList> createState() => _ViewPropertyListState();
}

class _ViewPropertyListState extends State<ViewPropertyList> {
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
                            color: ThemeColors().grey.withOpacity(0.3),
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
                          height: Sizes.s94.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: ThemeColors().white,
                              boxShadow: [
                                BoxShadow(
                                    color: ThemeColors().grey.withOpacity(0.3),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                    offset: const Offset(
                                      5.0,
                                      8.0,
                                    ))
                              ],
                              borderRadius: BorderRadius.circular(Sizes.s15.r)),
                          child: Row(
                            children: [
                              ScreenUtil().setHorizontalSpacing(10),
                              Stack(
                                children: [
                                  Container(
                                    height: Sizes.s83.w,
                                    width: Sizes.s83.w,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: ThemeColors()
                                                  .grey
                                                  .withOpacity(0.3),
                                              blurRadius: 10.0,
                                              spreadRadius: 1.5,
                                              offset: Offset(
                                                5.0, // Move to right 7.0 horizontally
                                                -1.0, // Move to bottom 8.0 Vertically
                                              ))
                                        ],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(Sizes.s15.r)),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                              'assets/images/image/image12.png',
                                            ),
                                            fit: BoxFit.cover)),
                                  ),
                                  Positioned(
                                    top: 11,
                                    right: 11,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(Sizes.s5.r),
                                          color: ThemeColors()
                                              .white
                                              .withOpacity(0.5)),
                                      height: Sizes.s19.h,
                                      width: Sizes.s19.w,
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Icon(
                                          CupertinoIcons.bookmark_fill,
                                          size: 10,
                                          color: ThemeColors().white,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              ScreenUtil().setHorizontalSpacing(15),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ScreenUtil().setVerticalSpacing(20.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            'Studio Apartment',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: Sizes.s14.sp),
                                          ),
                                        ),
                                        ScreenUtil().setHorizontalSpacing(8),
                                        Flexible(
                                          child: Text(
                                            '\$24,532',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: Sizes.s14.sp,
                                                color: ThemeColors().orange),
                                          ),
                                        ),
                                        ScreenUtil().setHorizontalSpacing(18),
                                      ],
                                    ),
                                    ScreenUtil().setVerticalSpacing(6),
                                    Row(
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SvgPicture.asset(
                                              AppAssets.bedIcon,
                                              // color: ThemeColors()
                                              //     .textColor,
                                            ),
                                            RichText(
                                                text: TextSpan(
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: ThemeColors()
                                                            .textColor),
                                                    children: const [
                                                  TextSpan(text: '3'),
                                                  TextSpan(text: ' Bed'),
                                                ]))
                                          ],
                                        ),
                                        ScreenUtil().setHorizontalSpacing(10),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                              AppAssets.bathIcon,
                                              color: ThemeColors().textColor,
                                            ),
                                            RichText(
                                                text: TextSpan(
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: ThemeColors()
                                                            .textColor),
                                                    children: const [
                                                  TextSpan(text: '2'),
                                                  TextSpan(text: ' Bath'),
                                                ]))
                                          ],
                                        ),
                                        ScreenUtil().setHorizontalSpacing(10),
                                        Column(
                                          children: [
                                            SvgPicture.asset(
                                              AppAssets.carIcon,
                                              color: ThemeColors().textColor,
                                            ),
                                            RichText(
                                                text: TextSpan(
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: ThemeColors()
                                                            .textColor),
                                                    children: const [
                                                  TextSpan(text: '2'),
                                                  TextSpan(text: ' Parking'),
                                                ]))
                                          ],
                                        ),
                                      ],
                                    ),
                                    // ScreenUtil().setVerticalSpacing(24.0),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
