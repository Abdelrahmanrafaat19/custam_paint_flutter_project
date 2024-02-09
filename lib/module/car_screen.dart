import 'package:custompaint/Shared/component/custom_text.dart';
import 'package:custompaint/module/second_car_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({super.key});

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 330.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  opacity: 0.4,
                  image: AssetImage("assets/firrie1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: SizedBox(
                      height: 40.h,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            flex: 3,
                            child: SizedBox(
                              height: 40.h,
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(
                                      left: 10.w,
                                      right: 20.w,
                                    ),
                                    child: FittedBox(
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.grey,
                                        size: 2.sp,
                                      ),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.r),
                                      borderSide: BorderSide.none),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          ImageIcon(
                            const AssetImage("assets/hotspot.png"),
                            color: Colors.white,
                            size: 30.h,
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 40.h,
                    ),
                  ),
                  Flexible(
                    child: customText(
                      text: "Off-Road",
                      color: Colors.white,
                      fontSize: 50.h,
                    ),
                  ),
                  Flexible(
                    child: customText(
                      text: "Cars",
                      color: Colors.grey,
                      fontSize: 30.h,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20.h,
            left: 0.0,
            right: 0.0,
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SecondCarsScreen(),
              )),
              child: ClipPath(
                clipper: RPSCustomPainter(),
                child: Container(
                  height: 350.h,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      opacity: 0.4,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/firrie2.jpg"),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100.h,
                      ),
                      customText(
                        text: "Classy",
                        color: Colors.white,
                        fontSize: 50.h,
                      ),
                      customText(
                        text: "Cars",
                        color: Colors.grey,
                        fontSize: 30.h,
                      ),
                      SizedBox(
                        height: 75.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                          children: [
                            Container(
                              width: 50.w,
                              height: 50.h,
                              margin: EdgeInsets.only(left: 10.w),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.5)),
                              child: const Icon(
                                Icons.notifications,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              width: 50.w,
                              height: 50.h,
                              margin: EdgeInsets.only(
                                left: 45.w,
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.5)),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              width: 50.w,
                              height: 50.h,
                              margin: EdgeInsets.only(
                                left: 55.w,
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.5)),
                              child: const Icon(
                                Icons.car_rental_sharp,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              width: 50.w,
                              height: 50.h,
                              margin: EdgeInsets.only(left: 52.w),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.withOpacity(0.5)),
                              child: const Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 250.h,
            left: 0.0,
            right: 0.0,
            child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SecondCarsScreen(),
              )),
              child: ClipPath(
                clipper: RPSCustomPainter2(),
                child: Container(
                  alignment: Alignment.center,
                  height: 350.h,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      opacity: 0.7,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/firrie3.jpg"),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100.h,
                      ),
                      customText(
                        text: "Fast On Road",
                        color: Colors.white,
                        fontSize: 50.h,
                      ),
                      customText(
                        text: "Cars",
                        color: Colors.grey,
                        fontSize: 30.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.quadraticBezierTo(size.width * 0.0008269, size.height * 0.6435429,
        size.width * 0.0011026, size.height * 0.8580571);
    path_0.cubicTo(
        size.width * 0.0841538,
        size.height * 0.8559714,
        size.width * 0.0060513,
        size.height * 0.9964286,
        size.width * 0.1301795,
        size.height * 1.0004857);
    path_0.cubicTo(
        size.width * 0.2608974,
        size.height * 0.9986000,
        size.width * 0.1876154,
        size.height * 0.8589714,
        size.width * 0.2564103,
        size.height * 0.8571429);
    path_0.cubicTo(
        size.width * 0.3415128,
        size.height * 0.8571429,
        size.width * 0.2606667,
        size.height * 0.9983143,
        size.width * 0.3857436,
        size.height * 1.0017143);
    path_0.cubicTo(
        size.width * 0.5160256,
        size.height * 0.9999429,
        size.width * 0.4378974,
        size.height * 0.8592571,
        size.width * 0.5139487,
        size.height * 0.8587429);
    path_0.cubicTo(
        size.width * 0.5965128,
        size.height * 0.8579429,
        size.width * 0.5162051,
        size.height * 0.9977143,
        size.width * 0.6421538,
        size.height * 1.0003714);
    path_0.cubicTo(
        size.width * 0.7712051,
        size.height * 0.9960571,
        size.width * 0.6968462,
        size.height * 0.8589429,
        size.width * 0.7692308,
        size.height * 0.8571429);
    path_0.cubicTo(
        size.width * 0.8475385,
        size.height * 0.8571429,
        size.width * 0.7724359,
        size.height * 0.9985714,
        size.width * 0.8985641,
        size.height * 1.0019429);
    path_0.cubicTo(
        size.width * 1.0132308,
        size.height * 0.9996857,
        size.width * 0.9543333,
        size.height * 0.8568571,
        size.width,
        size.height * 0.8571429);
    path_0.quadraticBezierTo(size.width * 1.0002051, size.height * 0.6429429,
        size.width * 1.0008205, size.height * 0.0003429);
    path_0.lineTo(0, 0);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class RPSCustomPainter2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0016154, size.height * 0.0025250);
    path_0.cubicTo(
        size.width * 0.0023846,
        size.height * 0.2368000,
        size.width * -0.0079487,
        size.height * 0.6629375,
        size.width * -0.0065385,
        size.height * 0.7414000);
    path_0.quadraticBezierTo(size.width * 0.0304103, size.height * 0.8925750,
        size.width * 0.5112564, size.height * 0.8748375);
    path_0.quadraticBezierTo(size.width * 0.9345897, size.height * 0.8702750,
        size.width, size.height * 0.9939375);
    path_0.cubicTo(
        size.width,
        size.height * 0.9160000,
        size.width * 1.0015128,
        size.height * 0.2662000,
        size.width * 1.0015128,
        size.height * 0.2196375);
    path_0.quadraticBezierTo(size.width * 0.8706410, size.height * 0.1223125,
        size.width * 0.5174615, size.height * 0.1244125);
    path_0.quadraticBezierTo(size.width * 0.0491282, size.height * 0.1345625,
        size.width * 0.0016154, size.height * 0.0025250);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
