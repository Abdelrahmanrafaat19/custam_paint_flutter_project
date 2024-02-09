import 'package:custompaint/Shared/component/custom_text.dart';
import 'package:custompaint/Shared/theme/colors.dart';
import 'package:custompaint/module/ferth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FrutesScreen extends StatefulWidget {
  const FrutesScreen({super.key});

  @override
  State<FrutesScreen> createState() => _FrutesScreenState();
}

class _FrutesScreenState extends State<FrutesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff302c30),
      body: Stack(
        children: [
          Positioned(
            top: -35.h,
            left: -30.w,
            child: Container(
              padding: EdgeInsets.all(40.w),
              width: 220.w,
              height: 220.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey),
              ),
              child: Container(
                padding: EdgeInsets.all(30.w),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xff3c402f)),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.yellowAccent,
                      ),
                      shape: BoxShape.circle),
                  child: Center(
                    child: CircleAvatar(
                      minRadius: 120.r,
                      foregroundColor: Colors.yellowAccent,
                      backgroundColor: Colors.yellowAccent,
                      backgroundImage: const AssetImage("assets/BoDa.jpg"),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 50.h,
            right: 20.w,
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 10.h),
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: FittedBox(
                child: customText(
                    textAlign: TextAlign.center,
                    text: "10 \nProduct",
                    color: Colors.black,
                    fontSize: 25.h,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            top: 25.h,
            right: 45.w,
            child: Container(
              height: 50.h,
              width: 50.w,
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
                size: 30.w,
              ),
            ),
          ),
          Positioned(
            top: 170.h,
            left: 20.w,
            child: customText(
              text: "Exotic",
              color: Colors.white,
              fontSize: 50.h,
            ),
          ),
          Positioned(
            top: 230.h,
            left: 20.w,
            child: SizedBox(
              width: 350.w,
              child: Row(
                children: [
                  customText(
                      text: "fruits",
                      color: SharedColor.babyGreen,
                      fontSize: 40.h,
                      fontWeight: FontWeight.w100),
                  const Spacer(),
                  customText(
                    text: "see more",
                    color: SharedColor.babyGreen,
                    fontSize: 20.h,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 350.h,
            left: 20.w,
            child: SizedBox(
              width: 350.w,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 170.w,
                      height: 170.h,
                      decoration: BoxDecoration(
                          color: SharedColor.grey,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(60.r),
                              bottomLeft: Radius.circular(15.r),
                              topLeft: Radius.circular(15.r),
                              topRight: Radius.circular(15.r))),
                      padding: EdgeInsets.only(left: 10.w, top: 30.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: customText(
                                text: "Pitayaa",
                                color: Colors.white,
                                fontSize: 27.h),
                          ),
                          Row(
                            children: [
                              customText(
                                  text: "Pitayaa",
                                  color: SharedColor.babyGreen,
                                  fontSize: 15.h),
                              const Icon(
                                Icons.workspace_premium,
                                color: SharedColor.babyGreen,
                              )
                            ],
                          ),
                          customText(
                              text: "30\$",
                              color: Colors.white,
                              fontSize: 20.h),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 170.w,
                      height: 170.h,
                      decoration: BoxDecoration(
                          color: SharedColor.grey,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(60.r),
                              bottomLeft: Radius.circular(15.r),
                              topLeft: Radius.circular(15.r),
                              topRight: Radius.circular(15.r))),
                      padding: EdgeInsets.only(left: 10.w, top: 30.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: customText(
                                text: "Pitayaa",
                                color: Colors.white,
                                fontSize: 27.h),
                          ),
                          Row(
                            children: [
                              customText(
                                  text: "Papaya",
                                  color: SharedColor.babyGreen,
                                  fontSize: 15.h),
                              const Icon(
                                Icons.workspace_premium,
                                color: SharedColor.babyGreen,
                              )
                            ],
                          ),
                          customText(
                              text: "70\$",
                              color: Colors.white,
                              fontSize: 20.h),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 250.h,
            left: 20.w,
            child: SizedBox(
              width: 350.w,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      width: 170.w,
                      height: 170.h,
                      child:
                          const Image(image: AssetImage("assets/pitayaa.png")),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      width: 170.w,
                      height: 170.h,
                      child:
                          const Image(image: AssetImage("assets/papaya.png")),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 480.h,
            left: 120.w,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 480.h,
            right: 40.w,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 550.h,
            left: 20.w,
            child: SizedBox(
              width: 350.w,
              child: Row(
                children: [
                  customText(
                      text: "Offers",
                      color: Colors.white,
                      fontSize: 40.h,
                      fontWeight: FontWeight.w400),
                  const Spacer(),
                  customText(
                    text: "see more",
                    color: SharedColor.babyGreen,
                    fontSize: 20.h,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 610.h,
            left: 20.w,
            child: Container(
              width: 350.w,
              height: 100.h,
              decoration: BoxDecoration(
                color: SharedColor.grey,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(60.r),
                  bottomLeft: Radius.circular(15.r),
                  topLeft: Radius.circular(15.r),
                  topRight: Radius.circular(15.r),
                ),
              ),
              child: Row(
                children: [
                  const Expanded(
                    flex: 2,
                    child: Image(
                      image: AssetImage("assets/guava.png"),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          child: customText(
                              text: "Guava",
                              color: Colors.white,
                              fontSize: 27.h),
                        ),
                        Row(
                          children: [
                            customText(
                                text: "Prmuim",
                                color: SharedColor.babyGreen,
                                fontSize: 15.h),
                            const Icon(
                              Icons.workspace_premium,
                              color: SharedColor.babyGreen,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          child: customText(
                              text: "220\$",
                              color: Colors.white,
                              fontSize: 27.h),
                        ),
                        customText(
                            text: "220\$", color: Colors.white, fontSize: 15.h),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 20.w,
            right: 20.w,
            child: Container(
              width: 300.w,
              height: 70.h,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50.r)),
            ),
          ),
          Positioned(
            bottom: 40.h,
            left: 50.w,
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Furniture(),
              )),
              child: CircleAvatar(
                radius: 30.r,
                backgroundColor: SharedColor.grey,
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 50.w,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 40.h,
            left: 175.w,
            child: CircleAvatar(
              radius: 30.r,
              backgroundColor: SharedColor.grey,
              child: Icon(
                Icons.search,
                color: Colors.white,
                size: 50.w,
              ),
            ),
          ),
          Positioned(
            bottom: 40.h,
            left: 300.w,
            child: CircleAvatar(
              radius: 30.r,
              backgroundColor: SharedColor.grey,
              child: Icon(
                Icons.workspace_premium,
                color: Colors.white,
                size: 50.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
