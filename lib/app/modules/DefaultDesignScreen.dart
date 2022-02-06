import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultDesignScreen extends GetView {
  final Widget body;
  final sliverAppBar;

  DefaultDesignScreen({required this.body, required this.sliverAppBar});

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
                bottom: Get.height / 5 + (Get.height / (3 + 1))),
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
