import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/elevatedbutton.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/utils/colors.dart';

import '../../../core/contants/textbutton.dart';

class DetailApartmentScreen extends StatefulWidget {
  const DetailApartmentScreen({super.key});

  @override
  State<DetailApartmentScreen> createState() => _DetailApartmentScreenState();
}

class _DetailApartmentScreenState extends State<DetailApartmentScreen> {
  List<String> roomPhotos = [
    'assets/images/image/room1.jpg',
    'assets/images/image/room2.jpg',
    'assets/images/image/room3.jpg',
    'assets/images/image/room1.jpg',
    'assets/images/image/room2.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: Sizes.s377,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/image/studioapatment.png',
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Sizes.s12.r),
                                color: ThemeColors().white.withOpacity(0.5)),
                            height: Sizes.s35.h,
                            width: Sizes.s35.w,
                            child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: SvgPicture.asset(AppAssets.backArrow)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Sizes.s12.r),
                              color: ThemeColors().white.withOpacity(0.5)),
                          height: Sizes.s35.h,
                          width: Sizes.s35.w,
                          child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SvgPicture.asset(AppAssets.bookMarkIcon)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              ScreenUtil().setVerticalSpacing(28),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Studio  Apartment',
                  style: TextStyle(
                      fontSize: Sizes.s23.sp,
                      fontWeight: FontWeight.w700,
                      color: ThemeColors().title),
                ),
              ),
              ScreenUtil().setVerticalSpacing(26),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Amenities ',
                  style: TextStyle(
                      fontSize: Sizes.s18.sp,
                      fontWeight: FontWeight.w700,
                      color: ThemeColors().title),
                ),
              ),
              ScreenUtil().setVerticalSpacing(26),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Sizes.s12.r),
                              color: ThemeColors().orange.withOpacity(0.1)),
                          height: Sizes.s35.h,
                          width: Sizes.s35.w,
                          child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SvgPicture.asset(
                                AppAssets.bedIcon,
                                color: Color.fromARGB(255, 219, 26, 23),
                              )),
                        ),
                        ScreenUtil().setVerticalSpacing(12),
                        RichText(
                            text: TextSpan(
                                style:
                                    TextStyle(color: ThemeColors().textColor),
                                children: const [
                              TextSpan(text: '3'),
                              TextSpan(text: ' Bed'),
                            ]))
                      ],
                    ),
                    Container(
                      height: 80,
                      width: 1,
                      color: ThemeColors().black.withOpacity(0.5),
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Sizes.s12.r),
                              color: ThemeColors().orange.withOpacity(0.1)),
                          height: Sizes.s35.h,
                          width: Sizes.s35.w,
                          child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SvgPicture.asset(
                                AppAssets.bathIcon,
                                color: ThemeColors().orange,
                              )),
                        ),
                        ScreenUtil().setVerticalSpacing(12),
                        RichText(
                            text: TextSpan(
                                style:
                                    TextStyle(color: ThemeColors().textColor),
                                children: const [
                              TextSpan(text: '2'),
                              TextSpan(text: ' Bath'),
                            ]))
                      ],
                    ),
                    Container(
                      height: 80,
                      width: 1,
                      color: ThemeColors().black.withOpacity(0.5),
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Sizes.s12.r),
                              color: ThemeColors().orange.withOpacity(0.1)),
                          height: Sizes.s35.h,
                          width: Sizes.s35.w,
                          child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SvgPicture.asset(
                                AppAssets.carIcon,
                                color: ThemeColors().orange,
                              )),
                        ),
                        ScreenUtil().setVerticalSpacing(12),
                        RichText(
                            text: TextSpan(
                                style:
                                    TextStyle(color: ThemeColors().textColor),
                                children: const [
                              TextSpan(text: '2'),
                              TextSpan(text: ' Parking'),
                            ]))
                      ],
                    )
                  ],
                ),
              ),
              ScreenUtil().setVerticalSpacing(26),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Room Photos',
                  style: TextStyle(
                      fontSize: Sizes.s18.sp,
                      fontWeight: FontWeight.w700,
                      color: ThemeColors().title),
                ),
              ),
              ScreenUtil().setVerticalSpacing(15),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: SizedBox(
                  height: Sizes.s135.h,
                  child: SizedBox(
                    height: Sizes.s270.h,
                    child: GridView.count(
                      scrollDirection: Axis.horizontal,
                      crossAxisCount: 1,
                      childAspectRatio: 1.6,
                      mainAxisSpacing: 15,
                      children: List.generate(roomPhotos.length, (index) {
                        return GestureDetector(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(Sizes.s15.r),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: ThemeColors().white,
                                ),
                                height: Sizes.s135.h,
                                width: Sizes.s100.w,
                                child: Image.asset(
                                  roomPhotos[index],
                                  fit: BoxFit.cover,
                                )),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
              ScreenUtil().setVerticalSpacing(50),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 34),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                              fontSize: Sizes.s16.sp,
                              fontWeight: FontWeight.w600,
                              color: ThemeColors().price),
                        ),
                        ScreenUtil().setVerticalSpacing(6),
                        Container(
                          // color: Colors.blue,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Flexible(
                            child: Text(
                              '\$24,532',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: Sizes.s22.sp,
                                  color: ThemeColors().orange),
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: CtmElevatedButton(
                        width: Sizes.s160.w,
                        txtColor: ThemeColors().white,
                        fontSize: Sizes.s19.sp,
                        fontWeight: FontWeight.w700,
                        text: 'Call US',
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) =>
                                _buildPopupDialog(context),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              ScreenUtil().setVerticalSpacing(30)
            ],
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
          Text(
            "Our contact person will contact you in 2-3 days.",
            style:
                TextStyle(fontSize: Sizes.s14.sp, fontWeight: FontWeight.w500),
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
