import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';

PreferredSizeWidget myAppbar({text = "", required BuildContext context}) {
  return AppBar(
    toolbarHeight: 90 * context.textScaleFactor,

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
