import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/input_text.dart';

class ScheduleDesign extends GetView {
  final List<Widget> body;
  final Widget appBarContent;

  ScheduleDesign({
    required this.body,
    required this.appBarContent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Get.theme.primaryColor,
        leadingWidth: 30,
        titleSpacing: 20,
        title: appBarContent,
      ),
      backgroundColor: Get.theme.canvasColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(children: body),
      ),
    );
  }
}
