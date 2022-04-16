import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainDesign extends GetView {
  final List<Widget> body;
  final SliverAppBar sliverAppBar;

  MainDesign({
    required this.body,
    required this.sliverAppBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.canvasColor,
      body: CustomScrollView(slivers: [
        sliverAppBar,
        SliverList(delegate: SliverChildListDelegate(body)),
        // SliverFillRemaining(
        //   hasScrollBody: true,
        //   child: Container(
        //     margin: EdgeInsets.only(top: 20),
        //     width: Get.width,
        //     child: Padding(
        //         padding: EdgeInsets.all(20),
        //         child: Container(
        //             width: Get.width, height: Get.height, child: body)),
        //     decoration: BoxDecoration(
        //       color: Get.theme.canvasColor,
        //       borderRadius: BorderRadius.only(
        //           topLeft: Radius.circular(25),
        //           topRight: Radius.circular(25)),
        //     ),
        //   ),
        // )
      ]),
    );
  }
}
