import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CtmSVGImage extends StatelessWidget {
  final String assetName;
  final double? imageheight;
  final AlignmentGeometry? alignment;
  final double? imagewidth;
  final double? height;
  final double? width;
  const CtmSVGImage({
    this.alignment,
    this.imageheight,
    this.imagewidth,
    this.height,
    this.width,
    required this.assetName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: alignment ?? Alignment.centerLeft,
      child: SvgPicture.asset(
        assetName,
        height: imageheight,
        width: imagewidth,
        fit: BoxFit.cover,
      ),
    );
  }
}
