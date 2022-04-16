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
    body.insert(
        0,
        Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.all(0),
          height: 20,
          decoration: BoxDecoration(
            color: Get.theme.primaryColor,
          ),
          width: context.width,
          child: Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            height: 20,
            width: context.width,
            decoration: BoxDecoration(
                color: Get.theme.backgroundColor,
                border: Border.all(color: Get.theme.backgroundColor),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18))),
          ),
        ));
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
