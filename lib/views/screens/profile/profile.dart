import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/elevatedbutton.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/contants/textbutton.dart';
import 'package:real_estate/core/utils/colors.dart';
import 'package:real_estate/views/screens/home/detailapatment_sccreen.dart';
import 'package:real_estate/views/screens/home/home_page/view_apartment_list.dart';
import 'package:real_estate/views/screens/home/home_page/view_property_list.dart';
import 'package:real_estate/views/screens/profile/edit_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ScreenUtil().setVerticalSpacing(20.0),
                Text(
                  'My Profile',
                  style: TextStyle(
                      color: ThemeColors().black,
                      fontSize: Sizes.s25.sp,
                      fontWeight: FontWeight.w600),
                ),
                ScreenUtil().setVerticalSpacing(30.0),
                Container(
                  height: Sizes.s100.h,
                  width: Sizes.s105.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: ThemeColors().orange, width: 2),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/image/profilepic.png'),
                          fit: BoxFit.cover)),
                ),
                ScreenUtil().setVerticalSpacing(15.0),
                const Text(
                  'Johan Roy',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                ),
                ScreenUtil().setVerticalSpacing(11.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Sizes.s6.r)),
                      backgroundColor: ThemeColors().themeColor,
                      fixedSize: Size(Sizes.s109.w, Sizes.s27.h)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfileScreen(),
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Edit profile',
                        style: TextStyle(
                            color: ThemeColors().white,
                            fontWeight: FontWeight.w600,
                            fontSize: 13),
                      ),
                      ScreenUtil().setHorizontalSpacing(3),
                      Icon(
                        Icons.edit,
                        // color: iconColor,
                        size: 12,
                      )
                    ],
                  ),
                ),
                // CtmElevatedButton(
                //     borderColor: ThemeColors().transparent,
                //     txtColor: ThemeColors().white,
                //     text: 'Edit profile',
                //     height: Sizes.s27.h,
                //     fontSize: 13,
                //     fontWeight: FontWeight.w600,
                //     width: Sizes.s109.w,
                //     radius: Sizes.s6.r,
                //     icon: Icons.edit,
                //     iconSize: 12,
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => EditProfileScreen(),
                //           ));
                //     }),
                ScreenUtil().setVerticalSpacing(30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(
                                  style: TextStyle(fontSize: Sizes.s18.sp),
                                  children: [
                                TextSpan(
                                  text: 'Popular',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: ThemeColors().black),
                                ),
                                // TextSpan(
                                //   text: ' (364)',
                                //   style: TextStyle(
                                //       fontWeight: FontWeight.w500,
                                //       color: ThemeColors().orange),
                                // )
                              ])),
                          CtmTextButton(
                            text: 'View all',
                            fontcolor: ThemeColors().orange,
                            fontSize: Sizes.s12.sp,
                            fontWeight: FontWeight.w700,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ViewApartmentList(),
                                  ));
                            },
                          )
                        ],
                      ),
                    ),
                    ScreenUtil().setVerticalSpacing(14),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: SizedBox(
                        height: Sizes.s270.h,
                        child: SizedBox(
                          height: Sizes.s270.h,
                          child: GridView.count(
                            scrollDirection: Axis.horizontal,
                            crossAxisCount: 1,
                            childAspectRatio: 1.8,
                            mainAxisSpacing: 15,
                            children: List.generate(5, (index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DetailApartmentScreen(),
                                      ));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: ThemeColors().white,
                                      borderRadius:
                                          BorderRadius.circular(Sizes.s15.r)),
                                  height: Sizes.s265.h,
                                  width: Sizes.s177.h,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              Sizes.s15.r),
                                          child: Stack(
                                            children: [
                                              Container(
                                                height: Sizes.s157.w,
                                                width: Sizes.s157.w,
                                                decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                          'assets/images/image/download3.jpeg',
                                                        ),
                                                        fit: BoxFit.cover)),
                                              ),
                                              Positioned(
                                                top: 11,
                                                right: 11,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              Sizes.s5.r),
                                                      color: ThemeColors()
                                                          .white
                                                          .withOpacity(0.5)),
                                                  height: Sizes.s19.h,
                                                  width: Sizes.s19.w,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            6.0),
                                                    child: Icon(
                                                      CupertinoIcons
                                                          .bookmark_fill,
                                                      size: 10,
                                                      color:
                                                          ThemeColors().white,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        ScreenUtil()
                                            .setVerticalSpacing(Sizes.s12.h),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Studio Apartment',
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: Sizes.s13.sp),
                                              ),
                                            ),
                                            ScreenUtil().setHorizontalSpacing(
                                                Sizes.s2.w),
                                            Expanded(
                                              child: Text(
                                                '\$24,532',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: Sizes.s14.sp,
                                                    color:
                                                        ThemeColors().orange),
                                              ),
                                            )
                                          ],
                                        ),
                                        ScreenUtil().setVerticalSpacing(18.0),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              children: [
                                                SvgPicture.asset(
                                                  AppAssets.bedIcon,
                                                  // color: ThemeColors().textColor,
                                                ),
                                                RichText(
                                                    text: TextSpan(
                                                        style: TextStyle(
                                                            // fontSize:
                                                            // Sizes.s9.sp,
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
                                            Column(
                                              children: [
                                                SvgPicture.asset(
                                                  AppAssets.bathIcon,
                                                  color:
                                                      ThemeColors().textColor,
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
                                            Column(
                                              children: [
                                                SvgPicture.asset(
                                                  AppAssets.carIcon,
                                                  color:
                                                      ThemeColors().textColor,
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
                                                      TextSpan(
                                                          text: ' Parking'),
                                                    ]))
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                    ScreenUtil().setVerticalSpacing(Sizes.s24.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              text: TextSpan(
                                  style: TextStyle(fontSize: Sizes.s18.sp),
                                  children: [
                                TextSpan(
                                  text: 'My Favorite',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: ThemeColors().black),
                                ),
                                // TextSpan(
                                //   text: ' (232)',
                                //   style: TextStyle(
                                //       fontWeight: FontWeight.w500,
                                //       color: ThemeColors().orange),
                                // )
                              ])),
                          CtmTextButton(
                            text: 'View all',
                            fontcolor: ThemeColors().orange,
                            fontSize: Sizes.s12.sp,
                            fontWeight: FontWeight.w700,
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ViewPropertyList(),
                                  ));
                            },
                          )
                        ],
                      ),
                    ),
                    ScreenUtil().setVerticalSpacing(14),
                    Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: SizedBox(
                        height: Sizes.s103.h,
                        child: SizedBox(
                          height: Sizes.s103.h,
                          child: GridView.count(
                            scrollDirection: Axis.horizontal,
                            crossAxisCount: 1,
                            childAspectRatio: 0.4,
                            mainAxisSpacing: 15,
                            children: List.generate(5, (index) {
                              return GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: Sizes.s103.h,
                                  width: Sizes.s280.w,
                                  decoration: BoxDecoration(
                                      color: ThemeColors().white,
                                      borderRadius:
                                          BorderRadius.circular(Sizes.s15.r)),
                                  child: Row(
                                    children: [
                                      ScreenUtil().setHorizontalSpacing(10),
                                      Stack(
                                        children: [
                                          Container(
                                            height: Sizes.s83.w,
                                            width: Sizes.s83.w,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(
                                                        Sizes.s15.r)),
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
                                                      BorderRadius.circular(
                                                          Sizes.s5.r),
                                                  color: ThemeColors()
                                                      .white
                                                      .withOpacity(0.5)),
                                              height: Sizes.s19.h,
                                              width: Sizes.s19.w,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6.0),
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
                                      ScreenUtil().setHorizontalSpacing(10),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ScreenUtil().setVerticalSpacing(15),
                                          Expanded(
                                            child: Text(
                                              'Studio Apartment',
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: Sizes.s13.sp),
                                            ),
                                          ),
                                          Row(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
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
                                                                  FontWeight
                                                                      .w500,
                                                              color: ThemeColors()
                                                                  .textColor),
                                                          children: const [
                                                        TextSpan(text: '3'),
                                                        TextSpan(text: ' Bed'),
                                                      ]))
                                                ],
                                              ),
                                              ScreenUtil()
                                                  .setHorizontalSpacing(10),
                                              Column(
                                                children: [
                                                  SvgPicture.asset(
                                                    AppAssets.bathIcon,
                                                    color:
                                                        ThemeColors().textColor,
                                                  ),
                                                  RichText(
                                                      text: TextSpan(
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: ThemeColors()
                                                                  .textColor),
                                                          children: const [
                                                        TextSpan(text: '2'),
                                                        TextSpan(text: ' Bath'),
                                                      ]))
                                                ],
                                              ),
                                              ScreenUtil()
                                                  .setHorizontalSpacing(10),
                                              Column(
                                                children: [
                                                  SvgPicture.asset(
                                                    AppAssets.carIcon,
                                                    color:
                                                        ThemeColors().textColor,
                                                  ),
                                                  RichText(
                                                      text: TextSpan(
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: ThemeColors()
                                                                  .textColor),
                                                          children: const [
                                                        TextSpan(text: '2'),
                                                        TextSpan(
                                                            text: ' Parking'),
                                                      ]))
                                                ],
                                              )
                                            ],
                                          ),
                                          ScreenUtil().setVerticalSpacing(10),
                                          Expanded(
                                            child: Text(
                                              '\$24,532',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: Sizes.s14.sp,
                                                  color: ThemeColors().orange),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                    ScreenUtil().setVerticalSpacing(25.0),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
