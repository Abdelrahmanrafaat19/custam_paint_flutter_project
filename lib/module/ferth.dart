import 'package:custompaint/Shared/component/custom_text.dart';
import 'package:custompaint/Shared/theme/colors.dart';
import 'package:custompaint/module/car_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Furniture extends StatefulWidget {
  const Furniture({super.key});

  @override
  State<Furniture> createState() => _FurnitureState();
}

class _FurnitureState extends State<Furniture>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int currentNumber = 0;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColor.grey,
      body: CustomPaint(
        size: Size(
            MediaQuery.of(context).size.width,
            (MediaQuery.of(context).size.width * 2.1432038834951457)
                .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
        painter: RPSCustomPainter(),
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      opacity: 0.5,
                      image: AssetImage("assets/Hotel.jpg"),
                      fit: BoxFit.fill),
                ),
                padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 30.h),
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () => Navigator.of(context).pop(),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 50.w,
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const CarScreen(),
                          )),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 50.w,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    FittedBox(
                      child: customText(
                          text: "AbdelRahman Shoaib",
                          color: Colors.white,
                          fontSize: 30.h),
                    ),
                    customText(
                        text: "Find Your Favourite",
                        color: Colors.grey,
                        fontSize: 20.h),
                    customText(
                        text: "Hotel",
                        color: SharedColor.babyGreen,
                        fontSize: 30.h)
                  ],
                ),
              ),
            ),
            Positioned(
              top: 270.h,
              left: 10.w,
              right: 10.w,
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: FittedBox(
                      child: Icon(
                        Icons.tune_rounded,
                        size: 10.h,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                      left: 10.w,
                      right: 20.w,
                    ),
                    child: FittedBox(
                      child: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 10.h,
                      ),
                    ),
                  ),
                  filled: true,
                  label: customText(
                      text: "Search here ....",
                      color: Colors.grey,
                      fontSize: 20.h),
                  fillColor: SharedColor.grey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r),
                      borderSide: const BorderSide(color: SharedColor.grey)),
                ),
              ),
            ),
            Positioned(
              top: 350.h,
              left: 10.w,
              right: 10.w,
              child: TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                dividerHeight: 0.0,
                indicatorColor: Colors.transparent,
                controller: tabController,
                tabs: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.w,
                      vertical: 10.h,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        border: Border.all(
                          color: SharedColor.babyGreen,
                        )),
                    child: FittedBox(
                      child: customText(
                        text: "BedGreen",
                        color: Colors.white,
                        fontSize: 15.h,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.w,
                      vertical: 10.h,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        border: Border.all(
                          color: SharedColor.babyGreen,
                        )),
                    child: FittedBox(
                      child: customText(
                        text: "BedGreeninSize",
                        color: Colors.white,
                        fontSize: 15.h,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(bottom: 10.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.w,
                      vertical: 10.h,
                    ),
                    /*  height: 50.h,
                    width: 100.w, */
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        border: Border.all(
                          color: SharedColor.babyGreen,
                        )),
                    child: FittedBox(
                      child: customText(
                        text: "BlueBed",
                        color: Colors.white,
                        fontSize: 15.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 420.h,
              left: 20.w,
              right: 0.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300.h,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        child: IntrinsicWidth(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 200.w,
                                height: 240.h,
                                margin: EdgeInsets.only(left: 10.w),
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("assets/hotel0.jpg")),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.r)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 10.h,
                                      left: 10.w,
                                      child: Container(
                                        width: 40.w,
                                        height: 40.h,
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                          color: Color(0xff242724),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(Icons.favorite,
                                            color: SharedColor.babyGreen),
                                      ),
                                    ),
                                    Positioned(
                                        top: 200.h,
                                        child: Container(
                                          width: 200.w,
                                          alignment: Alignment.center,
                                          child: customText(
                                            text: "10.4/7",
                                            color: SharedColor.babyGreen,
                                            fontSize: 20.h,
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              Flexible(
                                child: FittedBox(
                                  child: customText(
                                      text: "Hotel joridam Atiantica",
                                      color: Colors.white,
                                      fontSize: 17.h),
                                ),
                              ),
                              Flexible(
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      color: Colors.grey,
                                    ),
                                    customText(
                                        text: "Hotel joridam Atiantica",
                                        color: Colors.grey,
                                        fontSize: 10.h),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: SizedBox(
                    height: 50.h,
                    child: Row(
                      children: [
                        Expanded(
                          child: FittedBox(
                            child: InkWell(
                              focusColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  currentNumber = 0;
                                });
                              },
                              child: ImageIcon(
                                const AssetImage("assets/apps.png"),
                                color: currentNumber == 0
                                    ? SharedColor.babyGreen
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FittedBox(
                            child: InkWell(
                              focusColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  currentNumber = 1;
                                });
                              },
                              child: ImageIcon(
                                const AssetImage("assets/home.png"),
                                color: currentNumber == 1
                                    ? SharedColor.babyGreen
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: FittedBox(
                            child: InkWell(
                              focusColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  currentNumber = 2;
                                });
                              },
                              child: ImageIcon(
                                const AssetImage("assets/search.png"),
                                color: currentNumber == 2
                                    ? SharedColor.babyGreen
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0024272, size.height * 0.0011325);
    path_0.lineTo(size.width * 0.0024272, size.height * 0.7938845);
    path_0.quadraticBezierTo(size.width * 0.1262136, size.height * 0.9045866,
        size.width * 0.4975728, size.height * 0.9082673);
    path_0.quadraticBezierTo(size.width * 0.9186893, size.height * 0.9054926,
        size.width * 0.9975728, size.height * 0.7938845);
    path_0.lineTo(size.width, size.height * -0.0002265);
    path_0.lineTo(size.width * 0.0024272, size.height * 0.0011325);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
