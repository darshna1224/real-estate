import 'package:flutter/material.dart';
import 'package:real_estate/core/utils/colors.dart';
import 'package:real_estate/core/contants/sizes.dart';

class CtmTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final Color? labelTextColor;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? hintTextColor;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final bool? autofocus;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final double? hintFontSize;
  final FontWeight? hintFontWeight;
  final String? Function(String?)? validator;

  const CtmTextFormField({
    super.key,
    this.focusNode,
    this.autofocus,
    this.onChanged,
    this.onFieldSubmitted,
    this.controller,
    this.hintTextColor,
    this.labelTextColor,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.keyboardType,
    this.labelText,
    this.hintText,
    this.hintFontSize,
    this.hintFontWeight,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      focusNode: focusNode,
      autofocus: autofocus ?? false,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      keyboardType: keyboardType,
      cursorColor: ThemeColors.themeColor,
      style: TextStyle(
          color: textColor ?? ThemeColors.title,
          fontSize: fontSize ?? Sizes.s16.sp,
          fontWeight: fontWeight ?? FontWeight.w600),
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ThemeColors.themeColor)),
        labelText: labelText,
        labelStyle: TextStyle(color: labelTextColor, fontSize: Sizes.s15.sp),
        hintText: hintText,
        hintStyle: TextStyle(
            color: hintTextColor,
            fontWeight: hintFontWeight,
            fontSize: hintFontSize ?? Sizes.s15.sp),
      ),
    );
  }
}
