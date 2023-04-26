import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:get/get.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/utils/colors.dart';
import 'package:real_estate/models/bottombarview_model.dart';
import 'package:real_estate/views/screens/home/home_page/custom_drawer_screen.dart';
import 'package:real_estate/views/screens/home/home_page/menu_dashborad_page.dart';
import 'package:real_estate/views/screens/notification/notification_screen.dart';
import 'package:real_estate/views/screens/profile/profile.dart';
import 'package:real_estate/views/screens/saved/saved_tab.dart';
import 'package:real_estate/views/screens/seller/sell_contact.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // get pages => list;
  final _bottomBarViewModel = Get.find<BottomBarViewModel>();

  // final NotificationMethods _notification = NotificationMethods();

  // BidAcceptCountModel? bidAcceptCountModel;

  List list = [
    const MenuDashBoardPage(),
    const NotificationScreen(),
    const SavedScreen(),
    const ProfileScreen(),
  ];

  int currentIndex = 0;
  // int _selectedIndex = 0;
  int isSelected = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GetBuilder<BottomBarViewModel>(
        builder: (controller) {
          return Stack(
            children: [
              CustomDrawerScreen(),
              AnimatedContainer(
                duration: Duration(milliseconds: 400),
                height: Get.height,
                width: Get.width,
                transform: !controller.isDrawerVisible
                    ? (Matrix4.translationValues(0.0, 0.0, 0)..scale(1.25))
                    : Matrix4.translationValues(
                        Get.width * 0.7, Get.height * 0.13, 0)
                  ..scale(0.8),
                child: GestureDetector(
                  onTap: () {
                    if (controller.isDrawerVisible) {
                      _bottomBarViewModel.setIsDrawerVisible();
                    }
                  },
                  child: ClipRRect(
                    borderRadius: !controller.isDrawerVisible
                        ? BorderRadius.zero
                        : BorderRadius.horizontal(left: Radius.circular(20)),
                    child: Scaffold(
                      extendBody: false,
                      floatingActionButtonLocation:
                          FloatingActionButtonLocation.miniCenterDocked,
                      floatingActionButton: FloatingActionButton(
                        elevation: 0,
                        backgroundColor: ThemeColors.themeColor,
                        shape: CircleBorder(
                            side: BorderSide(
                                color: ThemeColors.white,
                                width: 5,
                                strokeAlign: 0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SellPersonContact(),
                              ));
                        },
                        child: const Icon(Icons.add),
                      ),
                      // backgroundColor: ThemeColors.orange,
                      backgroundColor: const Color(0xffF5F5F5),

                      body: list[currentIndex],
                      bottomNavigationBar: BottomAppBar(
                        color: ThemeColors.white,
                        height: Sizes.s70.h,
                        // notchMargin: 5,
                        // shape: const CircularNotchedRectangle(),
                        child: Row(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  onTap(0);
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: Sizes.s27.h,
                                    bottom: Sizes.s0.h,
                                    left: Sizes.s15.w),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(currentIndex == 0
                                        ? AppAssets.bFillHomeIcon
                                        : AppAssets.bHomeIcon),
                                    ScreenUtil().setVerticalSpacing(2),
                                    Text(
                                      'Home',
                                      style: TextStyle(fontSize: Sizes.s12.sp),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            ScreenUtil().setHorizontalSpacing(10),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  onTap(1);
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: Sizes.s26.h,
                                  bottom: Sizes.s0.h,
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(currentIndex == 1
                                        ? AppAssets.bFillNotificationIcon
                                        : AppAssets.bNotificationIcon),
                                    ScreenUtil().setVerticalSpacing(3),
                                    Text(
                                      'Notification',
                                      style: TextStyle(fontSize: Sizes.s12.sp),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            ScreenUtil().setHorizontalSpacing(10),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  //  onTap(2);
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: Sizes.s32.h,
                                    bottom: Sizes.s0.h,
                                    right: Sizes.s15.w),
                                child: Column(
                                  children: [
                                    Text(
                                      '       Sell\nYour Property',
                                      style: TextStyle(fontSize: Sizes.s12.sp),
                                    ),
                                    // Text('sell',textAlign: TextAlign.center,),
                                    // Text('Your Property',textAlign: TextAlign.center,)
                                  ],
                                ),
                              ),
                            ),
                            ScreenUtil().setHorizontalSpacing(10),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  onTap(2);
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: Sizes.s28.h,
                                    bottom: Sizes.s0.h,
                                    right: Sizes.s10.w),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(currentIndex == 2
                                        ? AppAssets.bFillSavedIcon
                                        : AppAssets.bSavedIcon),
                                    ScreenUtil().setVerticalSpacing(2),
                                    Text(
                                      'Saved',
                                      style: TextStyle(fontSize: Sizes.s12.sp),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            ScreenUtil().setHorizontalSpacing(10),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  onTap(3);
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: Sizes.s28.h,
                                    bottom: Sizes.s0.h,
                                    right: Sizes.s15.w),
                                child: Column(
                                  children: [
                                    SvgPicture.asset(currentIndex == 3
                                        ? AppAssets.bFillProfileIcon
                                        : AppAssets.bProfileIcon),
                                    ScreenUtil().setVerticalSpacing(2),
                                    Text(
                                      'Profile',
                                      style: TextStyle(fontSize: Sizes.s12.sp),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        // child: Scaffold(
        //   extendBody: false,
        //   body: pages[currentIndex],
        //   floatingActionButtonLocation:
        //       FloatingActionButtonLocation.miniCenterDocked,

        //   floatingActionButton: FloatingActionButton(
        //     backgroundColor: ThemeColors.themeColor,
        //     onPressed: () {
        //       Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => SellPersonContact(),
        //           ));
        //     },
        //     child: const Icon(Icons.add),
        //   ),
        //   bottomNavigationBar: BottomAppBar(
        //     color: ThemeColors.white,
        //     height: Sizes.s70.h,
        //     notchMargin: 5,
        //     shape: const CircularNotchedRectangle(),
        //     child: Row(
        //       // mainAxisSize: MainAxisSize.max,
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         GestureDetector(
        //           onTap: () {
        //             setState(() {
        //               onTap(0);
        //             });
        //           },
        //           child: Padding(
        //             padding: EdgeInsets.only(
        //                 top: Sizes.s27.h,
        //                 bottom: Sizes.s0.h,
        //                 left: Sizes.s15.w),
        //             child: Column(
        //               children: [
        //                 SvgPicture.asset(currentIndex == 0
        //                     ? AppAssets.bFillHomeIcon
        //                     : AppAssets.bHomeIcon),
        //                 ScreenUtil().setVerticalSpacing(2),
        //                 Text(
        //                   'Home',
        //                   style: TextStyle(fontSize: Sizes.s12.sp),
        //                 )
        //               ],
        //             ),
        //           ),
        //         ),
        //         ScreenUtil().setHorizontalSpacing(10),
        //         GestureDetector(
        //           onTap: () {
        //             setState(() {
        //               onTap(1);
        //             });
        //           },
        //           child: Padding(
        //             padding: EdgeInsets.only(
        //               top: Sizes.s26.h,
        //               bottom: Sizes.s0.h,
        //             ),
        //             child: Column(
        //               children: [
        //                 SvgPicture.asset(currentIndex == 1
        //                     ? AppAssets.bFillNotificationIcon
        //                     : AppAssets.bNotificationIcon),
        //                 ScreenUtil().setVerticalSpacing(3),
        //                 Text(
        //                   'Notification',
        //                   style: TextStyle(fontSize: Sizes.s12.sp),
        //                 )
        //               ],
        //             ),
        //           ),
        //         ),
        //         ScreenUtil().setHorizontalSpacing(10),
        //         GestureDetector(
        //           onTap: () {
        //             setState(() {
        //               //  onTap(2);
        //             });
        //           },
        //           child: Padding(
        //             padding: EdgeInsets.only(
        //                 top: Sizes.s32.h,
        //                 bottom: Sizes.s0.h,
        //                 right: Sizes.s15.w),
        //             child: Column(
        //               children: [
        //                 Text(
        //                   '       Sell\nYour Property',
        //                   style: TextStyle(fontSize: Sizes.s12.sp),
        //                 ),
        //                 // Text('sell',textAlign: TextAlign.center,),
        //                 // Text('Your Property',textAlign: TextAlign.center,)
        //               ],
        //             ),
        //           ),
        //         ),
        //         ScreenUtil().setHorizontalSpacing(10),
        //         GestureDetector(
        //           onTap: () {
        //             setState(() {
        //               onTap(2);
        //             });
        //           },
        //           child: Padding(
        //             padding: EdgeInsets.only(
        //                 top: Sizes.s28.h,
        //                 bottom: Sizes.s0.h,
        //                 right: Sizes.s10.w),
        //             child: Column(
        //               children: [
        //                 SvgPicture.asset(currentIndex == 2
        //                     ? AppAssets.bFillSavedIcon
        //                     : AppAssets.bSavedIcon),
        //                 ScreenUtil().setVerticalSpacing(2),
        //                 Text(
        //                   'Saved',
        //                   style: TextStyle(fontSize: Sizes.s12.sp),
        //                 )
        //               ],
        //             ),
        //           ),
        //         ),
        //         ScreenUtil().setHorizontalSpacing(10),
        //         GestureDetector(
        //           onTap: () {
        //             setState(() {
        //               onTap(3);
        //             });
        //           },
        //           child: Padding(
        //             padding: EdgeInsets.only(
        //                 top: Sizes.s28.h,
        //                 bottom: Sizes.s0.h,
        //                 right: Sizes.s15.w),
        //             child: Column(
        //               children: [
        //                 SvgPicture.asset(currentIndex == 3
        //                     ? AppAssets.bFillProfileIcon
        //                     : AppAssets.bProfileIcon),
        //                 ScreenUtil().setVerticalSpacing(2),
        //                 Text(
        //                   'Profile',
        //                   style: TextStyle(fontSize: Sizes.s12.sp),
        //                 )
        //               ],
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        //   // // // bottomNavigationBar: BottomNavigationBar(

        //   //   backgroundColor: Colors.white,
        //   //   onTap: onTap,
        //   //   currentIndex: currentIndex,
        //   //   showSelectedLabels: true,
        //   //     items: [
        //   //       BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.black),
        //   //       BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notification'),
        //   //       BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Sell Your Property'),

        //   //       BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: 'Saved'),
        //   //       BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
        //   //       ]),
        // ),
      ),
    );
  }
}
