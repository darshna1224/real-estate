import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:real_estate/core/contants/app_assets.dart';
import 'package:real_estate/core/contants/elevatedbutton.dart';
import 'package:real_estate/core/contants/textbutton.dart';
import 'package:real_estate/core/utils/colors.dart';
import 'package:real_estate/core/contants/sizes.dart';
import 'package:real_estate/views/screens/authentication/signin/new_psw.dart';
import 'package:real_estate/views/screens/home/bottombar.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors().white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Sizes.s90.h),
            SvgPicture.asset(
              AppAssets.otpLogo,
              height: Sizes.s108.h,
              width: Sizes.s108.w,
            ),
            SizedBox(
              height: Sizes.s37.h,
            ),
            Text(
              'Enter OTP',
              style: TextStyle(
                  fontSize: Sizes.s32.sp,
                  fontWeight: FontWeight.w700,
                  color: ThemeColors().title),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  child: Center(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: PinCodeTextField(
                          length: 4,
                          obscureText: false,
                          cursorColor: ThemeColors().themeColor,
                          keyboardType: TextInputType.number,
                          animationType: AnimationType.scale,
                          textStyle: TextStyle(
                            fontSize: Sizes.s20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.underline,
                            fieldWidth: 49,
                            inactiveColor: ThemeColors().textColor,
                            activeColor: ThemeColors().themeColor,
                            selectedColor: ThemeColors().themeColor,
                          ),
                          onCompleted: (v) {
                            // print("Completed");
                          },
                          onChanged: (value) {
                            // print(value);
                            // setState(() {
                            //   currentText = value;
                            // });
                          },
                          beforeTextPaste: (text) {
                            print("Allowing to paste $text");
                            //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                            //but you can show anything you want here, like your pop up saying wrong paste format or etc
                            return true;
                          },
                          appContext: context,
                        )
                        // OTPTextField(
                        //   length: 4,
                        //   width: MediaQuery.of(context).size.width,
                        //   fieldWidth: 49,
                        //   style: TextStyle(
                        //       fontSize: Sizes.s35.sp,
                        //       fontWeight: FontWeight.w700),
                        //   textFieldAlignment: MainAxisAlignment.spaceAround,
                        //   // fieldStyle: FieldStyle.underline,
                        //   otpFieldStyle: OtpFieldStyle(
                        //       enabledBorderColor: ThemeColors().themeColor,
                        //       focusBorderColor: ThemeColors().themeColor,
                        //       errorBorderColor: ThemeColors().orange),
                        //   onCompleted: (pin) {},
                        // ),
                        ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            CtmElevatedButton(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              text: 'Verify',
              fontSize: Sizes.s20.sp,
              fontWeight: FontWeight.w700,
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomBar(),
                    ));
              },
              txtColor: ThemeColors().white,
            ),
            CtmTextButton(
                fontWeight: FontWeight.w700,
                fontSize: Sizes.s14.sp,
                text: 'Resend OTP',
                decoration: TextDecoration.underline,
                fontcolor: ThemeColors().orange,
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const LoginPage()));
                }),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
