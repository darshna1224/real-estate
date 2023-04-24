import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/elevatedbutton.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/utils/colors.dart';
import 'package:real_estate/views/screens/home/chart_widget.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int _defaultBedroomIndex = 0;
  int _defaultBathroomIndex = 0;
  double start = 100.0;
  double end = 1200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                            color: ThemeColors.black,
                          ),
                        ),
                      ),
                    ),
                    ScreenUtil().setHorizontalSpacing(20.0),
                    Text(
                      'Filters',
                      style: TextStyle(
                          color: ThemeColors.black,
                          fontSize: Sizes.s23.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                ScreenUtil().setVerticalSpacing(30),
                Text(
                  'Property Type',
                  style: TextStyle(
                      color: ThemeColors.black,
                      fontSize: Sizes.s15.sp,
                      fontWeight: FontWeight.w600),
                ),
                ScreenUtil().setVerticalSpacing(23),
                selectePropertyType(),
                ScreenUtil().setVerticalSpacing(18),
                Text(
                  'Price',
                  style: TextStyle(
                      color: ThemeColors.black,
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
                          color: ThemeColors.black,
                          fontSize: Sizes.s15.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Price',
                      style: TextStyle(
                          color: ThemeColors.black,
                          fontSize: Sizes.s15.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                ScreenUtil().setVerticalSpacing(15),
                ChartWidget(),
                ScreenUtil().setVerticalSpacing(15),
                Text(
                  'Number of bedrooms',
                  style: TextStyle(
                      color: ThemeColors.black,
                      fontSize: Sizes.s15.sp,
                      fontWeight: FontWeight.w600),
                ),
                ScreenUtil().setVerticalSpacing(23),
                _noOfRooms(),
                ScreenUtil().setVerticalSpacing(15),
                Text(
                  'Number of bathrooms',
                  style: TextStyle(
                      color: ThemeColors.black,
                      fontSize: Sizes.s15.sp,
                      fontWeight: FontWeight.w600),
                ),
                ScreenUtil().setVerticalSpacing(23),
                _noOfBathRooms(),
                ScreenUtil().setVerticalSpacing(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Property size',
                      style: TextStyle(
                          color: ThemeColors.black,
                          fontSize: Sizes.s15.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Up to 1200sqft',
                      style: TextStyle(
                          color: ThemeColors.orange,
                          fontSize: Sizes.s12.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                ScreenUtil().setVerticalSpacing(23),
                SliderTheme(
                  data: const SliderThemeData(
                    trackHeight: 0.2,
                  ),
                  child: RangeSlider(
                    activeColor: ThemeColors.themeColor,
                    inactiveColor: ThemeColors.black.withOpacity(0.5),
                    values: RangeValues(start, end),
                    labels: RangeLabels(start.toString(), end.toString()),
                    onChanged: (value) {
                      setState(() {
                        start = value.start;
                        end = value.end;
                      });
                    },
                    min: 100.0,
                    max: 1200.0,
                  ),
                ),
                ScreenUtil().setVerticalSpacing(23),
                CtmElevatedButton(
                  borderColor: ThemeColors.transparent,
                  text: 'Apply',
                  fontSize: Sizes.s19.sp,
                  fontWeight: FontWeight.w700,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  txtColor: ThemeColors.white,
                ),
                ScreenUtil().setVerticalSpacing(23),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final List<Map<String, String>> _propertyType = [
    {AppAssets.apartmentIcon: 'Apartment'},
    {AppAssets.villaIcon: 'Villa'},
    {AppAssets.townhouseIcon: 'Townhouse'},
    {AppAssets.hotelApartmentIcon: 'Hotel apartment'},
    {AppAssets.penthouseIcon: 'Penthouse'},
    {AppAssets.duplexIcon: 'Duplex'},
  ];

  int _defaultchoiceIndex = 0;

  Widget selectePropertyType() {
    return Wrap(
        spacing: 9,
        runSpacing: 10,
        children: List.generate(
          _propertyType.length,
          (index) {
            return ChoiceChip(
              backgroundColor: ThemeColors.transparent,
              side: _defaultchoiceIndex == index
                  ? BorderSide.none
                  : BorderSide(color: ThemeColors.textColor),
              padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
              elevation: 0,
              pressElevation: 0,
              avatar: SvgPicture.asset(_propertyType[index].keys.first,
                  color: _defaultchoiceIndex == index
                      ? ThemeColors.white
                      : ThemeColors.textColor),
              label: Text(
                _propertyType[index].values.first,
                style: TextStyle(
                    color: _defaultchoiceIndex == index
                        ? ThemeColors.white
                        : ThemeColors.textColor),
              ),
              selected: _defaultchoiceIndex == index,
              selectedColor: ThemeColors.orange,
              onSelected: (value) {
                setState(() {
                  _defaultchoiceIndex = index;
                });
              },
            );
          },
        ));
  }

  final List _numberOfBedrooms = [
    'Studio',
    '1 BR',
    '2 BR',
    '3 BR',
  ];

  final List _numberOfBathrooms = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  Row _noOfRooms() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        _numberOfBedrooms.length,
        (index) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    // _isSelected = !_isSelected;
                    _defaultBedroomIndex = index;
                  });
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color:
                        // _isSelected == true &&
                        _defaultBedroomIndex == index
                            ? ThemeColors.orange
                            : ThemeColors.transparent,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: _defaultBedroomIndex == index
                          ? ThemeColors.transparent
                          : ThemeColors.textColor,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    _numberOfBedrooms[index],
                    style: TextStyle(
                      color:
                          // _isSelected == true &&
                          _defaultBedroomIndex == index
                              ? ThemeColors.white
                              : ThemeColors.textColor,
                    ),
                  )),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Row _noOfBathRooms() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        _numberOfBathrooms.length,
        (index) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    // _isSelected = !_isSelected;
                    _defaultBathroomIndex = index;
                  });
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color:
                        // _isSelected == true &&
                        _defaultBathroomIndex == index
                            ? ThemeColors.orange
                            : ThemeColors.transparent,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: _defaultBathroomIndex == index
                          ? ThemeColors.transparent
                          : ThemeColors.textColor,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    _numberOfBathrooms[index],
                    style: TextStyle(
                      color:
                          // _isSelected == true &&
                          _defaultBathroomIndex == index
                              ? ThemeColors.white
                              : ThemeColors.textColor,
                    ),
                  )),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
