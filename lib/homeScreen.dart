import 'dart:ui';

import 'package:demo/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final ScrollController _controller = ScrollController();
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 90,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [primaryColorLight, primaryColorStrong])),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Image.asset(
                              "assets/icons/menu.png",
                              height: 15,
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 3, top: 3),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(5))),
                                height: 35,
                                width: 55,
                                child: Stack(
                                  children: [
                                    Image.asset(
                                        "assets/icons/notification-bell.png"),
                                    Positioned(
                                      left: 18,
                                      child: Container(
                                        height: 15,
                                        width: 15,
                                        child: Center(
                                            child: Text(
                                          "3",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 9),
                                        )),
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 5, top: 3),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(5))),
                                height: 35,
                                width: 55,
                                child: Stack(
                                  children: [
                                    Image.asset("assets/icons/messages.png"),
                                    Positioned(
                                      left: 18,
                                      child: Container(
                                        height: 15,
                                        width: 15,
                                        child: Center(
                                            child: Text(
                                          "3",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 9),
                                        )),
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(35)),
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
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/logo/Logo.png",
                        width: 150,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Faz Sam,",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 7, 49, 86)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 100,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              controller: _controller,
                              itemCount: 5,
                              itemBuilder: ((context, index) => Stack(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 80,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(40),
                                                  border: Border.all(
                                                      width: 2,
                                                      color: index == 0
                                                          ? Colors.grey.shade300
                                                          : Colors.red)),
                                              child: Image.asset(
                                                  "assets/icons/story.png"),
                                            ),
                                            Text(
                                              "Your Story",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      index == 0
                                          ? Positioned(
                                              right: 5,
                                              bottom: 18,
                                              child: Image.asset(
                                                "assets/icons/plus.png",
                                                height: 25,
                                              ))
                                          : SizedBox(),
                                      index == 2
                                          ? Positioned(
                                              bottom: 20,
                                              left: 20,
                                              child: Image.asset(
                                                "assets/icons/live.png",
                                                height: 15,
                                              ))
                                          : SizedBox()
                                    ],
                                  )),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                _controller.animateTo(
                                  _controller.position.maxScrollExtent,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Image.asset(
                                  "assets/icons/view_all.png",
                                  height: 60,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 270,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (context, index) => Stack(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          right: 10, top: 10, bottom: 10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                offset: Offset(4, 4),
                                                blurRadius: 15,
                                                color: Colors.grey.shade300)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      height: 250,
                                      width: 180,
                                      padding: EdgeInsets.all(7),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Stack(
                                            children: [
                                              Image.asset(
                                                  "assets/icons/car.png"),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: Align(
                                                  alignment: Alignment.topRight,
                                                  child: Icon(
                                                    Icons.favorite,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Bugatti Sport Edition\n2023...",
                                            style: TextStyle(
                                                fontSize: 12.5,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "USD 2,637,000",
                                                style: TextStyle(
                                                    fontSize: 12.5,
                                                    color: Color(0xFFF76631),
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Image.asset(
                                                "assets/icons/Bag.png",
                                                height: 35,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                size: 16,
                                                color: primaryColorLight,
                                              ),
                                              Text(
                                                "5",
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      right: 10,
                                      child: Container(
                                        height: 23,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(12)),
                                            gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  primaryColorLight,
                                                  primaryColorStrong
                                                ])),
                                        child: Center(
                                          child: Text(
                                            "Featured",
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 40,
                          width: 230,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                Color.fromARGB(140, 255, 217, 0),
                                Color.fromARGB(141, 253, 186, 18)
                              ])),
                          child: Center(
                              child: Text(
                            "See All Feature Ads",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 7, 49, 86)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 260,
                        child: MyGrid(
                            items: List.generate(
                                6,
                                (index) => Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 3,
                                              color: primaryColorLight)),
                                      child: Column(
                                        children: [
                                          Image.asset(
                                              "assets/icons/graphics_card.png"),
                                          Text(
                                            "Graphic Cards",
                                            style: TextStyle(
                                                fontSize: 10.5,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 18, 82, 134)),
                                          )
                                        ],
                                      ),
                                    )),
                            crossAxisCount: 3),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class MyGrid extends StatelessWidget {
  final List<Widget> items;
  final int crossAxisCount;

  const MyGrid({Key? key, required this.items, required this.crossAxisCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 1,
          ),
          delegate: SliverChildListDelegate(items),
        ),
      ],
    );
  }
}
