import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/utils/colors.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors().bgColor,
      body: SafeArea(
        child: Column(
          children: [
            ScreenUtil().setVerticalSpacing(20.0),
            Text(
              'Saved',
              style: TextStyle(
                  color: ThemeColors().black,
                  fontSize: Sizes.s25.sp,
                  fontWeight: FontWeight.w600),
            ),
            ScreenUtil().setVerticalSpacing(20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Container(
                height: Sizes.s40.h,
                decoration: BoxDecoration(
                    color: ThemeColors().searchBar,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: TextFormField(
                    // controller: _searchController,
                    onChanged: (val) {
                      setState(() {
                        // name = val;
                      });
                    },
                    cursorColor: ThemeColors().themeColor,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: ' Search your..',
                        hintStyle: TextStyle(
                            // decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                            fontSize: Sizes.s13.sp),
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: ThemeColors().textColor,
                        )),
                  ),
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
                          height: Sizes.s103.h,
                          width: Sizes.s280.w,
                          decoration: BoxDecoration(
                              color: ThemeColors().white,
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
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.grey,
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
                              ScreenUtil().setHorizontalSpacing(10),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ScreenUtil().setVerticalSpacing(20.0),
                                    Row(
                                      children: [
                                        Flexible(
                                          child: Text(
                                            'Studio Apartment',
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: Sizes.s14.sp),
                                          ),
                                        ),
                                        ScreenUtil().setHorizontalSpacing(8),
                                        Text(
                                          '\$24,532',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: Sizes.s14.sp,
                                              color: ThemeColors().orange),
                                        )
                                      ],
                                    ),
                                    const Spacer(),
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
                                    ScreenUtil().setVerticalSpacing(24.0),
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
            // Padding(
            //   padding: EdgeInsets.only(left: 30),
            //   child: SizedBox(
            //     height: Sizes.s103.h,
            //     child: SizedBox(
            //       height: Sizes.s103.h,
            //       child: GridView.count(
            //         scrollDirection: Axis.vertical,
            //         crossAxisCount: 1,
            //         childAspectRatio: 0.4,
            //         mainAxisSpacing: 15,
            //         children: List.generate(5, (index) {
            //           return GestureDetector(
            //             onTap: () {},
            //             child: Container(
            //               height: Sizes.s103.h,
            //               width: Sizes.s280.w,
            //               decoration: BoxDecoration(
            //                   color: ThemeColors().white,
            //                   borderRadius:
            //                       BorderRadius.circular(Sizes.s15.r)),
            //               child: Row(
            //                 children: [
            //                   ScreenUtil().setHorizontalSpacing(10),
            //                   Stack(
            //                     children: [
            //                       Container(
            //                         height: Sizes.s83.w,
            //                         width: Sizes.s83.w,
            //                         decoration: BoxDecoration(
            //                             borderRadius: BorderRadius.all(
            //                                 Radius.circular(Sizes.s15.r)),
            //                             image: const DecorationImage(
            //                                 image: AssetImage(
            //                                   'assets/images/image/image12.png',
            //                                 ),
            //                                 fit: BoxFit.cover)),
            //                       ),
            //                       Positioned(
            //                         top: 11,
            //                         right: 11,
            //                         child: Container(
            //                           decoration: BoxDecoration(
            //                               borderRadius: BorderRadius.circular(
            //                                   Sizes.s5.r),
            //                               color: ThemeColors()
            //                                   .white
            //                                   .withOpacity(0.5)),
            //                           height: Sizes.s19.h,
            //                           width: Sizes.s19.w,
            //                           child: Padding(
            //                             padding: const EdgeInsets.all(6.0),
            //                             child: Icon(
            //                               CupertinoIcons.bookmark_fill,
            //                               size: 10,
            //                               color: ThemeColors().white,
            //                             ),
            //                           ),
            //                         ),
            //                       )
            //                     ],
            //                   ),
            //                   ScreenUtil().setHorizontalSpacing(10),
            //                   Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       ScreenUtil().setVerticalSpacing(15),
            //                       Expanded(
            //                         child: Text(
            //                           'Studio Apartment',
            //                           maxLines: 2,
            //                           overflow: TextOverflow.ellipsis,
            //                           style: TextStyle(
            //                               fontWeight: FontWeight.w700,
            //                               fontSize: Sizes.s13.sp),
            //                         ),
            //                       ),
            //                       Row(
            //                         // mainAxisAlignment:
            //                         //     MainAxisAlignment.spaceBetween,
            //                         children: [
            //                           Column(
            //                             children: [
            //                               SvgPicture.asset(
            //                                 AppAssets.bedIcon,
            //                                 // color: ThemeColors()
            //                                 //     .textColor,
            //                               ),
            //                               RichText(
            //                                   text: TextSpan(
            //                                       style: TextStyle(
            //                                           color: ThemeColors()
            //                                               .textColor),
            //                                       children: const [
            //                                     TextSpan(text: '3'),
            //                                     TextSpan(text: ' Bed'),
            //                                   ]))
            //                             ],
            //                           ),
            //                           ScreenUtil().setHorizontalSpacing(10),
            //                           Column(
            //                             children: [
            //                               SvgPicture.asset(
            //                                 AppAssets.bathIcon,
            //                                 color: ThemeColors().textColor,
            //                               ),
            //                               RichText(
            //                                   text: TextSpan(
            //                                       style: TextStyle(
            //                                           color: ThemeColors()
            //                                               .textColor),
            //                                       children: const [
            //                                     TextSpan(text: '2'),
            //                                     TextSpan(text: ' Bath'),
            //                                   ]))
            //                             ],
            //                           ),
            //                           ScreenUtil().setHorizontalSpacing(10),
            //                           Column(
            //                             children: [
            //                               SvgPicture.asset(
            //                                 AppAssets.carIcon,
            //                                 color: ThemeColors().textColor,
            //                               ),
            //                               RichText(
            //                                   text: TextSpan(
            //                                       style: TextStyle(
            //                                           color: ThemeColors()
            //                                               .textColor),
            //                                       children: const [
            //                                     TextSpan(text: '2'),
            //                                     TextSpan(text: ' Parking'),
            //                                   ]))
            //                             ],
            //                           )
            //                         ],
            //                       ),
            //                       ScreenUtil().setVerticalSpacing(10),
            //                       Expanded(
            //                         child: Text(
            //                           '\$24,532',
            //                           maxLines: 1,
            //                           overflow: TextOverflow.ellipsis,
            //                           style: TextStyle(
            //                               fontWeight: FontWeight.w700,
            //                               fontSize: Sizes.s14.sp,
            //                               color: ThemeColors().orange),
            //                         ),
            //                       )
            //                     ],
            //                   )
            //                 ],
            //               ),
            //             ),
            //           );
            //         }),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
