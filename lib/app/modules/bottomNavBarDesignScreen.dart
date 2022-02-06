// ignore_for_file: unnecessary_this

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';

class BottomNavBarDesignScreen extends DefaultDesignScreen {
  final Widget bottomNavBar;

  BottomNavBarDesignScreen(
      {required Widget body, required sliverAppBar, required this.bottomNavBar})
      : super(body: body, sliverAppBar: sliverAppBar);

  @override
  Widget build(BuildContext context) {
    List<Widget> itemList = [
      Container(
        margin: EdgeInsets.only(top: 40),
        child: Padding(
            padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: (Get.height / 5) + (Get.height / (3 + 1))),
            child: body),
        decoration: BoxDecoration(
          color: Get.theme.canvasColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
      ),
    ];

    return Scaffold(
        bottomNavigationBar: bottomNavBar,
        backgroundColor: Get.theme.backgroundColor,
        body: CustomScrollView(
          slivers: [
            sliverAppBar,
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => itemList[index],
                    childCount: itemList.length))
          ],
        ));
  }
}
