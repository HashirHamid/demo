import 'package:demo/bottombar.dart';
import 'package:demo/homeScreen.dart';
import 'package:flutter/material.dart';

class HomeTabs extends StatefulWidget {
  const HomeTabs({super.key});

  @override
  State<HomeTabs> createState() => _HomeTabsState();
}

class _HomeTabsState extends State<HomeTabs> {
  int currentIndex = 0;

  changeIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          currentIndex == 0
              ? HomeScreen()
              : Container(
                  color: Colors.white,
                ),
          Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavBarV2(
                  ind: 0,
                  onTap: () {
                    changeIndex;
                  }))
        ],
      ),
    );
  }
}
