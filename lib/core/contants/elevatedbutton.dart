import 'package:flutter/material.dart';
import 'package:real_estate/core/utils/colors.dart';

class CtmElevatedButton extends StatelessWidget {
  final FontWeight? fontWeight;
  final String text;
  final Color? borderColor;
  final Color? btnColor;
  final Color txtColor;
  final double? fontSize;
  final double? height;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? radius;

  const CtmElevatedButton({
    this.radius,
    this.fontSize,
    this.fontWeight,
    this.borderColor,
    this.btnColor,
    required this.txtColor,
    required this.text,
    this.height,
    required this.onPressed,
    this.margin,
    this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: margin,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
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
