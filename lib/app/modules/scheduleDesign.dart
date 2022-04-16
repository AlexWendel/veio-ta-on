import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/input_text.dart';

class ScheduleDesign extends GetView {
  final List<Widget> body;
  final Widget appBarContent;
  final String actionText;
  final Function()? onPressed;

  ScheduleDesign(
      {required this.body,
      required this.appBarContent,
      required this.actionText,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          width: context.width,
          child: ElevatedButton(
            child: Text(actionText),
            onPressed: onPressed,
          )),
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
