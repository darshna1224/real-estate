import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/contants/textbutton.dart';
import 'package:real_estate/core/utils/colors.dart';
import 'package:real_estate/views/screens/home/detailapatment_sccreen.dart';
import 'package:real_estate/views/screens/home/filter.dart';
import 'package:real_estate/views/screens/home/home_page/view_apartment_list.dart';
import 'package:real_estate/views/screens/home/home_page/view_property_list.dart';

class MenuDashBoardPage extends StatefulWidget {
  const MenuDashBoardPage({Key? key}) : super(key: key);

  @override
  State<MenuDashBoardPage> createState() => _MenuDashBoardPageState();
}

class _MenuDashBoardPageState extends State<MenuDashBoardPage>
    with TickerProviderStateMixin {
  bool openDrawer = true;
  final Duration duration = const Duration(milliseconds: 300);
  late AnimationController _controller;
  late Animation<double> _Scaleanimation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: duration);
    _Scaleanimation = Tween<double>(begin: 1, end: 0.6).animate(_controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF5FBFA),
      body: Stack(
        children: [menu(context), const HomePage()],
      ),
    );
  }

  Widget menu(context) {
    return Column(
      children: [
        ScreenUtil().setVerticalSpacing(90),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              Container(
                height: Sizes.s48.h,
                width: Sizes.s48.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(AppAssets.profilePic),
                      fit: BoxFit.cover,
                    )),
              ),
              ScreenUtil().setHorizontalSpacing(15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Johan Roy',
                    style: TextStyle(
                      fontSize: Sizes.s20.sp,
                      color: ThemeColors().title,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Johanroy@gmail.com',
                    style: TextStyle(
                      fontSize: Sizes.s15.sp,
                      color: ThemeColors().textColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        ScreenUtil().setVerticalSpacing(55),
        ListTile(
          leading: SvgPicture.asset(AppAssets.nameIcon),
          title: Text(
            'My Profile',
            style:
                TextStyle(fontSize: Sizes.s15.sp, fontWeight: FontWeight.w400),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppAssets.nameIcon),
          title: Text(
            'My Favorite',
            style:
                TextStyle(fontSize: Sizes.s15.sp, fontWeight: FontWeight.w400),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppAssets.nameIcon),
          title: Text(
            'Contact',
            style:
                TextStyle(fontSize: Sizes.s15.sp, fontWeight: FontWeight.w400),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppAssets.nameIcon),
          title: Text(
            'My Properties ',
            style:
                TextStyle(fontSize: Sizes.s15.sp, fontWeight: FontWeight.w400),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppAssets.nameIcon),
          title: Text(
            'Notofication',
            style:
                TextStyle(fontSize: Sizes.s15.sp, fontWeight: FontWeight.w400),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppAssets.nameIcon),
          title: Text(
            'Privacy Police',
            style:
                TextStyle(fontSize: Sizes.s15.sp, fontWeight: FontWeight.w400),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(AppAssets.nameIcon),
          title: Text(
            'Log Out',
            style:
                TextStyle(fontSize: Sizes.s15.sp, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool openDrawer = true;
  final Duration duration = const Duration(milliseconds: 300);
  late AnimationController _controller;
  late Animation<double> _Scaleanimation;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: duration);
    _Scaleanimation = Tween<double>(begin: 1, end: 0.6).animate(_controller);
    super.initState();
  }

  int currentImage = 0;
  List<String> listPaths = [
    'assets/images/image/Sunset-Quotes.jpg',
    'assets/images/image/download2.jpeg',
    'assets/images/image/download3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AnimatedPositioned(
      top: 0,
      bottom: 0,
      left: openDrawer ? 0 : size.width * 0.6,
      right: openDrawer ? 0 : size.width * -0.4,
      duration: duration,
      child: ScaleTransition(
        scale: _Scaleanimation,
        child: Material(
          animationDuration: duration,
          borderRadius: BorderRadius.all(Radius.circular(Sizes.s15.r)),
          elevation: 8,
          color: const Color(0xffF5F5F5),
          child: Scaffold(
            backgroundColor: const Color(0xffF5F5F5),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ScreenUtil().setVerticalSpacing(55),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (openDrawer) {
                                _controller.forward();
                              } else {
                                _controller.reverse();
                              }
                              openDrawer = !openDrawer;
                            });
                          },
                          icon: const Icon(
                              CupertinoIcons.line_horizontal_3_decrease),
                        ),
                        Container(
                          height: Sizes.s48.h,
                          width: Sizes.s48.w,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(AppAssets.profilePic),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      'Let’s Find',
                      style: TextStyle(
                          fontSize: Sizes.s23.sp, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: Sizes.s20.sp),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Your Dream ',
                              style: TextStyle(
                                  color: ThemeColors().textColor,
                                  fontWeight: FontWeight.w700)),
                          TextSpan(
                              text: ' Home',
                              style: TextStyle(color: ThemeColors().orange)),
                        ],
                      ),
                    ),
                  ),
                  ScreenUtil().setVerticalSpacing(20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            height: Sizes.s48.h,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Center(
                              child: TextFormField(
                                controller: _searchController,
                                onChanged: (val) {
                                  setState(() {
                                    // name = val;
                                  });
                                },
                                cursorColor: ThemeColors().themeColor,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: ' Area, create search',
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
                        ScreenUtil().setHorizontalSpacing(18),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FilterScreen(),
                                ));
                          },
                          child: Container(
                            height: Sizes.s48.h,
                            width: Sizes.s48.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: ThemeColors().orange),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: SvgPicture.asset(
                                AppAssets.filterIcon,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ScreenUtil().setVerticalSpacing(20),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CarouselSlider.builder(
                          itemCount: listPaths.length,
                          itemBuilder: (context, index, realIndex) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22),
                              child: Container(
                                height: Sizes.s190.h,
                                width: size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(listPaths[index]),
                                        fit: BoxFit.cover)),
                              ),
                            );
                          },
                          options: CarouselOptions(
                              viewportFraction: 1,
                              autoPlay: false,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentImage = index;
                                });
                              }),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: listPaths.map((value) {
                            int index = listPaths.indexOf(value);
                            return Container(
                              width: 8.0,
                              height: 8.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentImage == index
                                    ? ThemeColors().orange
                                    : ThemeColors().lightOrange,
                              ),
                            );
                          }).toList(),
                        ),
                      ]),
                  ScreenUtil().setVerticalSpacing(26),
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
                                    style: TextStyle(fontSize: Sizes.s15.sp),
                                    children: [
                                  TextSpan(
                                    text: 'Apartments',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: ThemeColors().black),
                                  ),
                                  TextSpan(
                                    text: ' (364)',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: ThemeColors().orange),
                                  )
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
                      ScreenUtil().setVerticalSpacing(Sizes.s24.h),
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
                                                  decoration:
                                                      const BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                                  image:
                                                                      AssetImage(
                                                                    'assets/images/image/download3.jpeg',
                                                                  ),
                                                                  fit: BoxFit
                                                                      .cover)),
                                                ),
                                                Positioned(
                                                  top: 11,
                                                  right: 11,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: Sizes.s13.sp),
                                                ),
                                              ),
                                              ScreenUtil().setHorizontalSpacing(
                                                  Sizes.s2.w),
                                              Expanded(
                                                child: Text(
                                                  '\$24,532',
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
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
                                    style: TextStyle(fontSize: Sizes.s15.sp),
                                    children: [
                                  TextSpan(
                                    text: 'Villa',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: ThemeColors().black),
                                  ),
                                  TextSpan(
                                    text: ' (232)',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: ThemeColors().orange),
                                  )
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
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                                    CupertinoIcons
                                                        .bookmark_fill,
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
                                                          TextSpan(
                                                              text: ' Bed'),
                                                        ]))
                                                  ],
                                                ),
                                                ScreenUtil()
                                                    .setHorizontalSpacing(10),
                                                Column(
                                                  children: [
                                                    SvgPicture.asset(
                                                      AppAssets.bathIcon,
                                                      color: ThemeColors()
                                                          .textColor,
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
                                                              text: ' Bath'),
                                                        ]))
                                                  ],
                                                ),
                                                ScreenUtil()
                                                    .setHorizontalSpacing(10),
                                                Column(
                                                  children: [
                                                    SvgPicture.asset(
                                                      AppAssets.carIcon,
                                                      color: ThemeColors()
                                                          .textColor,
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
                                                    color:
                                                        ThemeColors().orange),
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
      ),
    );
  }
}
