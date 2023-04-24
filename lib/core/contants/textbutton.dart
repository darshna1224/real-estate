import 'package:flutter/material.dart';
import 'package:real_estate/core/utils/colors.dart';

class CtmTextButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final Color? fontcolor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;

  const CtmTextButton({
    this.decoration,
    this.fontSize,
    this.fontWeight,
    this.onTap,
    this.fontcolor,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
            decoration: decoration,
            fontSize: fontSize ?? 13.6,
            color: fontcolor ?? ThemeColors.black,
            fontWeight: fontWeight ?? FontWeight.w500),
      ),
    );
  }
}
