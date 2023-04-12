import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/utils/colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  var notificationDay = [
    {
      'Today': [
        'fxgcjhvjjh',
        'zstrdhch',
      ]
    },
    {
      'Yesterday': [
        {
          'description': [
            'New Property in your area',
            '23 cross, Harbar Leyout, Bangalor',
          ]
        },
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: Sizes.s30.sp),
                  child: Text(
                    'Notification',
                    style: TextStyle(
                      fontSize: Sizes.s23.sp,
                      color: ThemeColors().black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              ScreenUtil().setVerticalSpacing(20),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          notificationDay[index].keys.first,
                          style: TextStyle(
                              fontSize: Sizes.s20.sp,
                              fontWeight: FontWeight.w600,
                              color: ThemeColors().title),
                        ),
                      ),
                      ScreenUtil().setVerticalSpacing(20),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.only(left: 30, right: 20),
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              Sizes.s15.r),
                                          child: SizedBox(
                                            height: Sizes.s68.h,
                                            width: Sizes.s68.w,
                                            child: Image.asset(
                                                'assets/images/image/property1.jpg'),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'New Property in your area',
                                              style: TextStyle(
                                                  fontSize: Sizes.s14.sp,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            ScreenUtil().setVerticalSpacing(11),
                                            Text(
                                              '23 cross, Harbar Leyout, Bangalor',
                                              style: TextStyle(
                                                  fontSize: Sizes.s11.sp,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '12:00 PM',
                                              style: TextStyle(
                                                  fontSize: Sizes.s10.sp,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            ScreenUtil().setVerticalSpacing(11),
                                            Container(
                                              height: Sizes.s7.h,
                                              width: Sizes.s7.w,
                                              decoration: BoxDecoration(
                                                  color: ThemeColors().orange,
                                                  shape: BoxShape.circle),
                                            )
                                          ],
                                        )
                                      ]),
                                );
                              },
                              separatorBuilder: (context, index) => Divider(
                                  thickness: 1, indent: 20, endIndent: 20),
                              itemCount: 4),
                        ],
                      ),
                    ],
                  );
                },
                itemCount: notificationDay.length,
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(height: Sizes.s16.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
