import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/contants/sizes.dart';

import '../../../core/contants/textformfield.dart';
import '../../../core/utils/colors.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(
          child: Text("Select property type"), value: "Select property type"),
      const DropdownMenuItem(child: Text("Land"), value: "Land"),
      const DropdownMenuItem(child: Text("Residential"), value: "Residential"),
      const DropdownMenuItem(child: Text("Commercial"), value: "Commercial"),
      const DropdownMenuItem(child: Text("Industrial"), value: "Industrial"),
    ];
    return menuItems;
  }

  String selectedProperty = "Select property type";

  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  String? _selectedLocation; // Option 2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ScreenUtil().setVerticalSpacing(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Property title',
                style: TextStyle(
                  color: ThemeColors.title,
                  fontSize: Sizes.s15.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: CtmTextFormField(
                hintText: 'Enter property title',
              )),
          ScreenUtil().setVerticalSpacing(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Property type',
                style: TextStyle(
                  color: ThemeColors.title,
                  fontSize: Sizes.s15.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                    isExpanded: true,
                    style: TextStyle(
                        color: ThemeColors.textColor,
                        fontSize: Sizes.s15.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Karla'),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedProperty = newValue!;
                      });
                    },
                    value: selectedProperty,
                    items: dropdownItems),
              )),
          ScreenUtil().setVerticalSpacing(30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Bathrooms',
                        style: TextStyle(
                          color: ThemeColors.title,
                          fontSize: Sizes.s15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    DropdownButton(
                      isExpanded: true,
                      style: TextStyle(
                          color: ThemeColors.textColor,
                          fontSize: Sizes.s14.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Karla'),
                      hint: Text(
                        'Select',
                        style: TextStyle(
                            color: ThemeColors.textColor,
                            fontSize: Sizes.s15.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Karla'),
                      ),
                      value: _selectedLocation,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedLocation = newValue;
                        });
                      },
                      items: _locations.map((location) {
                        return DropdownMenuItem(
                          child: new Text(location),
                          value: location,
                        );
                      }).toList(),
                    ),
                  ],
                )),
                ScreenUtil().setHorizontalSpacing(25),
                Expanded(
                    child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Bathrooms',
                        style: TextStyle(
                          color: ThemeColors.title,
                          fontSize: Sizes.s15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    DropdownButton(
                      isExpanded: true,
                      style: TextStyle(
                          color: ThemeColors.textColor,
                          fontSize: Sizes.s15.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Karla'),
                      hint: Text(
                        'Select',
                        style: TextStyle(
                            color: ThemeColors.textColor,
                            fontSize: Sizes.s15.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Karla'),
                      ),
                      value: _selectedLocation,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedLocation = newValue;
                        });
                      },
                      items: _locations.map((location) {
                        return DropdownMenuItem(
                          child: new Text(location),
                          value: location,
                        );
                      }).toList(),
                    ),
                  ],
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
