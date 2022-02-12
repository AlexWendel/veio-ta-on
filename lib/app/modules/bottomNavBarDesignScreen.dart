// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';

class BottomNavBarDesignScreen extends DefaultDesignScreen {
  final Widget bottomNavBar;

  BottomNavBarDesignScreen(
      {required Widget body, required sliverAppBar, required this.bottomNavBar})
      : super(body: body, sliverAppBar: sliverAppBar);

  @override
  Widget build(BuildContext context) {
    List<Widget> itemList = [
      Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20), child: body),
    ];

    return Scaffold(
      bottomNavigationBar: bottomNavBar,
      backgroundColor: Get.theme.backgroundColor,
      body: CustomScrollView(
        slivers: [
          sliverAppBar,
          SliverFillRemaining(
              child: Container(
                  decoration: BoxDecoration(
                    color: Get.theme.canvasColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(children: itemList))),
        ],
      ),
    );
  }
}
