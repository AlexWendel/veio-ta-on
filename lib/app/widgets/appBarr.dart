import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';

class MyAppBar extends AppBar {
  String text = "";

  MyAppBar({text = ""}) {
    this.text = text;
  }

  @override
  Widget builder(BuildContext context) {
    return AppBar(
      toolbarHeight: 90,

      elevation: 0,
      // leadingWidth: 10,
      centerTitle: false,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black54,
          size: 32,
        ),
      ),
      backgroundColor: verdeBosta,
      title: Text(text, style: appbartext),
    );
  }
}
