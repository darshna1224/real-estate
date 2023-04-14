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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  ScreenUtil().setHorizontalSpacing(20.0),
                  Text(
                    'Filters',
                    style: TextStyle(
                        color: ThemeColors().black,
                        fontSize: Sizes.s23.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              ScreenUtil().setVerticalSpacing(30),
              Text(
                'Property Type',
                style: TextStyle(
                    color: ThemeColors().black,
                    fontSize: Sizes.s15.sp,
                    fontWeight: FontWeight.w600),
              ),
              ScreenUtil().setVerticalSpacing(23),
              SelectePropertyType(),
              ScreenUtil().setVerticalSpacing(18),
              Text(
                'Price',
                style: TextStyle(
                    color: ThemeColors().black,
                    fontSize: Sizes.s15.sp,
                    fontWeight: FontWeight.w600),
              ),
              ScreenUtil().setVerticalSpacing(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                        color: ThemeColors().black,
                        fontSize: Sizes.s15.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Price',
                    style: TextStyle(
                        color: ThemeColors().black,
                        fontSize: Sizes.s15.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  List _propertyType = [
    'Apartment',
    'Villa',
    'Townhouse',
    'Hotel apartment',
    'Penthouse',
    'Duplex',
  ];

  List _propertyIcons = [
    'assets/images/icons/apartmentIcon.svg',
    'assets/images/icons/villaIcon.svg',
    'assets/images/icons/townhouseIcon.svg',
    'assets/images/icons/hotelApartmentIcon.svg',
    'assets/images/icons/penthouseIcon.svg',
    'assets/images/icons/duplexIcon.svg',
  ];

  int _defaultchoiceIndex = 0;

  Widget SelectePropertyType() {
    return Wrap(
        spacing: 9,
        runSpacing: 10,
        children: List.generate(
          _propertyType.length,
          (index) {
            return ChoiceChip(
              backgroundColor: ThemeColors().transparent,
              side: _defaultchoiceIndex == index
                  ? BorderSide.none
                  : BorderSide(color: ThemeColors().textColor),
              padding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
              elevation: 0,
              pressElevation: 0,
              avatar: SvgPicture.asset(_propertyIcons[index],
                  color: _defaultchoiceIndex == index
                      ? ThemeColors().white
                      : ThemeColors().textColor),
              label: Text(
                _propertyType[index],
                style: TextStyle(
                    color: _defaultchoiceIndex == index
                        ? ThemeColors().white
                        : ThemeColors().textColor),
              ),
              selected: _defaultchoiceIndex == index,
              selectedColor: ThemeColors().orange,
              onSelected: (value) {
                setState(() {
                  _defaultchoiceIndex = index;
                });
              },
            );
          },
        ));
  }
}
