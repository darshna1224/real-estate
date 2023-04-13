import 'package:flutter/material.dart';
import 'package:flutter_utils/flutter_utils.dart';
import 'package:real_estate/core/utils/colors.dart';

class CtmElevatedButton extends StatelessWidget {
  final FontWeight? fontWeight;
  final String text;
  final Color borderColor;
  final Color? btnColor;
  final Color txtColor;
  final double? fontSize;
  final double? height;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? radius;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final double? elevation;

  const CtmElevatedButton({
    this.radius,
    this.fontSize,
    this.fontWeight,
    required this.borderColor,
    this.btnColor,
    required this.txtColor,
    required this.text,
    this.height,
    required this.onPressed,
    this.margin,
    this.width,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.elevation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: margin,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: elevation,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 2,
                  color: borderColor,
                ),
                borderRadius: BorderRadius.circular(radius ?? 15)),
            backgroundColor: btnColor ?? ThemeColors().themeColor,
            fixedSize: Size(width ?? size.width, height ?? 63)),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: txtColor, fontWeight: fontWeight, fontSize: fontSize),
        ),
      ),
    );
  }
}
