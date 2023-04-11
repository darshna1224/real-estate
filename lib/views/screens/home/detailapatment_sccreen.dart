import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/core/utils/colors.dart';

class DetailApartmentScreen extends StatefulWidget {
  const DetailApartmentScreen({super.key});

  @override
  State<DetailApartmentScreen> createState() => _DetailApartmentScreenState();
}

class _DetailApartmentScreenState extends State<DetailApartmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: Sizes.s377,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/image/studioapatment.png',
                          ),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Positioned(
                    
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(Sizes.s12.r),
                            color: ThemeColors().white.withOpacity(0.5)),
                        height: Sizes.s37.h,
                        width: Sizes.s37.w,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(AppAssets.backArrow)
                          
                        ),
                      ),
                    ),
                  ),
                   Positioned(
                
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Sizes.s12.r),
                          color: ThemeColors().white.withOpacity(0.5)),
                      height: Sizes.s37.h,
                      width: Sizes.s37.w,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                         child: SvgPicture.asset(AppAssets.bookMarkIcon)
                      ),
                    ),
                  )
                    ],
                  ),
                ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
