import 'package:demo/constants.dart';
import 'package:flutter/material.dart';

class BottomNavBarV2 extends StatefulWidget {
  int ind;
  VoidCallback onTap;
  BottomNavBarV2({required this.ind, required this.onTap});

  @override
  _BottomNavBarV2State createState() => _BottomNavBarV2State();
}

class _BottomNavBarV2State extends State<BottomNavBarV2> {
  int? currentIndex;

  @override
  void initState() {
    currentIndex = widget.ind;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CustomPaint(
          size: Size(size.width, 80),
          painter: BNBCustomPainter(),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.35,
            child: Image.asset(
              "assets/icons/Premium.png",
              height: 70,
            )),
        Container(
          color: Colors.transparent,
          width: size.width,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = 0;
                    widget.onTap();
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      currentIndex == 0
                          ? "assets/icons/Home.png"
                          : "assets/icons/Home1.png",
                      height: currentIndex == 0 ? 40 : 25,
                    ),
                    currentIndex == 0
                        ? Container(
                            height: 6,
                            width: 33,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      primaryColorLight,
                                      primaryColorStrong
                                    ])),
                          )
                        : Container()
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      currentIndex == 1
                          ? "assets/icons/Searchg.png"
                          : "assets/icons/Search.png",
                      height: currentIndex == 1 ? 40 : 25,
                    ),
                    currentIndex == 1
                        ? Container(
                            height: 6,
                            width: 33,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      primaryColorLight,
                                      primaryColorStrong
                                    ])),
                          )
                        : Container()
                  ],
                ),
              ),
              SizedBox(
                width: size.width * 0.1,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      currentIndex == 2
                          ? "assets/icons/Cartg.png"
                          : "assets/icons/Cart.png",
                      height: currentIndex == 2 ? 40 : 25,
                    ),
                    currentIndex == 2
                        ? Container(
                            height: 6,
                            width: 33,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      primaryColorLight,
                                      primaryColorStrong
                                    ])),
                          )
                        : Container()
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      currentIndex == 3
                          ? "assets/icons/profileg.png"
                          : "assets/icons/Profile.png",
                      height: currentIndex == 3 ? 40 : 25,
                    ),
                    currentIndex == 3
                        ? Container(
                            height: 6,
                            width: 33,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      primaryColorLight,
                                      primaryColorStrong
                                    ])),
                          )
                        : Container()
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    Path path = Path(); // Start
    path.moveTo(0, 20);
    path.quadraticBezierTo(size.width * 0.01, 0, size.width * 0.07, 0);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.39, 0, size.width * 0.41, 20);
    path.arcToPoint(
      Offset(size.width * 0.60, 10),
      radius: Radius.circular(45.0),
      clockwise: false,
    );
    path.quadraticBezierTo(size.width * 0.62, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width * 0.92, 0);

    path.quadraticBezierTo(size.width * 0.98, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.moveTo(0, 20);

    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);

    Paint paint1 = Paint()
      ..color = primaryColorLight
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    // Rect rect = Rect.fromPoints(Offset(0, 0), Offset(size.width, size.height));
    canvas.drawPath(path, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
