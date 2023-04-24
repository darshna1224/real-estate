import 'package:flutter/material.dart';
import 'package:real_estate/core/utils/colors.dart';
import 'package:real_estate/core/contants/sizes.dart';

class CtmTextFormFieldWithIcon extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? labelText;
  final String? hintText;
  final Color? labelTextColor;
  final Color? hintTextColor;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final bool? autofocus;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const CtmTextFormFieldWithIcon({
    super.key,
    this.focusNode,
    this.autofocus,
    this.onChanged,
    this.onFieldSubmitted,
    this.controller,
    this.hintTextColor,
    this.labelTextColor,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.labelText,
    this.hintText,
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
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ThemeColors.themeColor)),
        suffixIcon: suffixIcon,
        prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 8.0), child: prefixIcon),
        labelText: labelText,
        labelStyle: TextStyle(color: labelTextColor, fontSize: Sizes.s15.sp),
        hintText: hintText,
        hintStyle: TextStyle(color: hintTextColor, fontSize: Sizes.s15.sp),
      ),
    );
  }
}
