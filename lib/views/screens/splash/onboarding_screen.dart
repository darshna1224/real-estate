import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate/core/contants/elevatedbutton.dart';
import 'package:real_estate/core/utils/colors.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/models/onboarding_model.dart';
import 'package:real_estate/views/screens/authentication/signin/login_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  int currentIndex = 0;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: size.height * 0.65,
                            width: size.width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      background[index].bgimage.toString(),
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                              top: 30,
                              right: 20,
                              child: currentIndex == contents.length - 1
                                  ? const Text('')
                                  : InkWell(
                                      onTap: () {},
                                      child: const Text(
                                        'Skip',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff000000)),
                                      ),
                                    )),
                          Positioned(
                              // top: 182,
                              left: 70,
                              bottom: 100,
                              right: 70,
                              child: SvgPicture.asset(
                                  contents[index].image.toString())
                              // Image.asset(
                              //   contents[index].image.toString(),
                              //   height: 280,
                              //   width: 289,
                              // ),
                              )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          contents[index].title.toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Color(0xff32312F),
                              fontWeight: FontWeight.w600,
                              fontSize: 23),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: contents.length,
              effect: const ExpandingDotsEffect(
                  activeDotColor: Color(0xFF9FD7D0),
                  radius: 30,
                  dotWidth: 6,
                  dotHeight: 6),
            ),
            CtmElevatedButton(
              text: 'Next',
              fontSize: Sizes.s19.sp,
              fontWeight: FontWeight.w700,
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ));
                }
                _controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.linear);
              },
              margin: EdgeInsets.fromLTRB(
                  Sizes.s22.w, Sizes.s19.h, Sizes.s22.w, Sizes.s19.h),
              txtColor: ThemeColors().white,
            ),
          ],
        ),
      ),
    );
  }
}
