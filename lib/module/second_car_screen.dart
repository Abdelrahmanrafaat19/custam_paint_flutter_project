import 'package:custompaint/Shared/component/custom_text.dart';
import 'package:custompaint/Shared/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondCarsScreen extends StatelessWidget {
  const SecondCarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              right: 20.w,
            ),
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: const Color(0xff2400ff),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: const Icon(
              Icons.workspace_premium_sharp,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.of(context).size.height * 1.8,
          child: Stack(
            children: [
              Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                child: ClipPath(
                  clipper: CliperConatiner(),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 400.h,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/firrie1.jpg"),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 270.h,
                left: 100.w,
                right: 100.w,
                child: Container(
                  width: 100.w,
                  height: 130.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/firrie3.jpg"),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 450.h,
                left: 0.0,
                right: 0.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customText(
                        text: "Discription",
                        color: Colors.black,
                        fontSize: 20.h,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        height: 250.h,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio:
                                MediaQuery.of(context).orientation ==
                                        Orientation.portrait
                                    ? 0.35
                                    : 0.35,
                          ),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 100.h,
                              margin: EdgeInsets.only(
                                  left: 10.w, bottom: 10.h, top: 10.h),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey, blurRadius: 10.r)
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.electric_bolt_outlined,
                                          color: SharedColor.grey,
                                        ),
                                        customText(
                                          text: "Horese Power",
                                          color: SharedColor.grey,
                                          fontSize: 20.h,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: customText(
                                      text: "500hr",
                                      color: Colors.black,
                                      fontSize: 25.h,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      customText(
                        text: "Price",
                        color: Colors.black,
                        fontSize: 20.h,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        height: 120.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 341,
                              margin: EdgeInsets.only(
                                  left: 10.w, bottom: 10.h, top: 10.h),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.r),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey, blurRadius: 10.r)
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.electric_bolt_outlined,
                                          color: SharedColor.grey,
                                        ),
                                        customText(
                                          text: "Horese Power",
                                          color: SharedColor.grey,
                                          fontSize: 20.h,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: customText(
                                      text: "500hr",
                                      color: Colors.black,
                                      fontSize: 25.h,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CliperConatiner extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0381000, size.height * -0.0035600);
    path_0.quadraticBezierTo(size.width * -0.0381000, size.height * 0.5178800,
        size.width * -0.0381000, size.height * 0.6928800);
    path_0.quadraticBezierTo(size.width * 0.0861250, size.height * 0.9999200,
        size.width * 0.4922000, size.height * 0.8566400);
    path_0.quadraticBezierTo(size.width * 0.8945500, size.height * 0.6937800,
        size.width * 1.0064250, size.height * 1.0043800);
    path_0.quadraticBezierTo(size.width * 1.0069000, size.height * 0.7546200,
        size.width * 1.0083750, 0);
    path_0.lineTo(size.width * -0.0381000, size.height * -0.0035600);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
