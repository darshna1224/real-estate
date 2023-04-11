import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/utils/colors.dart';
import 'package:real_estate/views/screens/authentication/signin/login_page.dart';
import 'package:real_estate/views/screens/authentication/signin/new_psw.dart';
import 'package:real_estate/views/screens/authentication/signup/signup_page.dart';
import 'package:real_estate/views/screens/home/menu_dashborad_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

 List pages = [
    MenuDashBoardPage(),
    LoginPage(),
    ForgotPswNew(),
    SignupScreen(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: pages[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,

      floatingActionButton: FloatingActionButton(
        backgroundColor: ThemeColors().themeColor,
        onPressed: () {},
        child: Icon( Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        color: ThemeColors().white,
        height: Sizes.s70.h,
        notchMargin:5 ,
        shape: CircularNotchedRectangle(),
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
                padding: const EdgeInsets.only(top: 27,bottom: 0,left: 15),
                child: Column(
                  children: [
                    
                    SvgPicture.asset(currentIndex == 0 ? AppAssets.bFillHomeIcon : AppAssets.bHomeIcon),
                    ScreenUtil().setVerticalSpacing(2),
                    Text('Home',style: TextStyle(fontSize: Sizes.s12.sp),)
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
                 padding: const EdgeInsets.only(top: 26,bottom: 0,),
                 child: Column(
                  children: [
                   SvgPicture.asset(currentIndex == 1 ? AppAssets.bFillNotificationIcon : AppAssets.bNotificationIcon),
                    ScreenUtil().setVerticalSpacing(3),
                    Text('Notification',style: TextStyle(fontSize: Sizes.s12.sp),)
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
                 padding: const EdgeInsets.only(top:12,bottom: 0,right: 15),
                 child: Column(
                  children: [
                    SvgPicture.asset(currentIndex == 1 ? AppAssets.bFillHomeIcon : AppAssets.bHomeIcon,color:Colors.transparent,),
                    Text('       Sell\nYour Property',style: TextStyle(fontSize: Sizes.s12.sp),),
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
                 padding: const EdgeInsets.only(top: 28,bottom: 0,right: 10),
                 child: Column(
                  children: [
                    SvgPicture.asset(currentIndex == 2 ? AppAssets.bFillSavedIcon : AppAssets.bSavedIcon),
                    ScreenUtil().setVerticalSpacing(2),
                    Text('Saved',style: TextStyle(fontSize: Sizes.s12.sp),)
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
                 padding: const EdgeInsets.only(top: 28,bottom: 12,right: 15),
                 child: Column(
                  children: [
                   SvgPicture.asset(currentIndex == 3 ? AppAssets.bFillProfileIcon : AppAssets.bProfileIcon),
                    ScreenUtil().setVerticalSpacing(2),
                    Text('Profile',style: TextStyle(fontSize: Sizes.s12.sp),)
                  ],
                           ),
               ),
             ),
          ],
        ),
      ),
      // // // bottomNavigationBar: BottomNavigationBar(
        
      //   backgroundColor: Colors.white,
      //   onTap: onTap,
      //   currentIndex: currentIndex,
      //   showSelectedLabels: true,
      //     items: [
      //       BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.black),
      //       BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notification'),
      //       BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Sell Your Property'),
          
      //       BottomNavigationBarItem(icon: Icon(Icons.bookmark),label: 'Saved'),
      //       BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
      //       ]),
    );
  }
}
