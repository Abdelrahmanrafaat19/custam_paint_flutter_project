import 'package:custompaint/Shared/component/custom_text.dart';
import 'package:custompaint/Shared/component/custome_button.dart';
import 'package:custompaint/Shared/theme/colors.dart';
import 'package:custompaint/module/fruites_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/fur.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 10.w,
                      right: 20.w,
                      top: 10.h,
                    ),
                    width: 85.w,
                    height: 85.h,
                    decoration: BoxDecoration(
                        color: SharedColor.babyGreen,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(65.r))),
                    child: FittedBox(
                      child: customText(
                          text: "STA YZ.",
                          color: Colors.black,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w900,
                          height: 1),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText(
                            fontWeight: FontWeight.bold,
                            text: "STAYZ",
                            color: Colors.white,
                            fontSize: 20.sp),
                        customText(
                          text: "book easy",
                          color: Colors.grey,
                          fontSize: 20.sp,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 50.h,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 200.w),
                width: double.infinity,
                height: 50.h,
                decoration: const BoxDecoration(),
                child: const ImageIcon(
                  AssetImage("assets/Sparkle.png"),
                  color: SharedColor.babyGreen,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Book Your hotels Fast and Easly with',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.sp,
                        height: 1.25,
                      ),
                    ),
                    TextSpan(
                      text: "STAYZ",
                      style: TextStyle(
                        color: SharedColor.babyGreen,
                        fontSize: 40.sp,
                        height: 1.25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: customText(
                text:
                    "Find your hotel easly and travel anywhare you want with us",
                color: Colors.grey,
                fontSize: 20.sp,
              ),
            ),
            Expanded(
              flex: 3,
              child: SizedBox(
                height: 350.h,
              ),
            ),
            Flexible(
              child: custamButtom(
                  color: SharedColor.babyGreen,
                  text: customText(
                      text: "SignUP", color: Colors.black, fontSize: 20.sp),
                  paddingHersontal: 100.w,
                  paddingVertical: 10.h,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FrutesScreen(),
                        ));
                  },
                  radius: 15.r),
            ),
            Expanded(
              child: customText(
                text: "Already have account ? Login",
                color: Colors.grey,
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
