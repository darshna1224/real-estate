import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_utils/flutter_utils.dart';

import '../../../core/contants/textformfield.dart';
import '../../../core/utils/colors.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({super.key});

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
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
                'Name',
                style: TextStyle(color: ThemeColors().textColor),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: CtmTextFormField(
              keyboardType: TextInputType.name,
              labelTextColor: ThemeColors().textColor,
              hintText: 'Enter your name',
              hintTextColor: ThemeColors().textColor,
              // controller: _phone
            ),
          ),
        ],
      ),
    );
  }
}
