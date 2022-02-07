import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.icons.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/utils/common.sizes.dart';

class TitleSliverAppBar extends GetWidget {
  final String title;
  TitleSliverAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        toolbarHeight: appBarHeight * context.textScaleFactor,
        expandedHeight: appBarHeight * context.textScaleFactor,
        floating: true,
        snap: true,
        elevation: 0,
        backgroundColor: Get.theme.backgroundColor,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              color: Get.theme.backgroundColor,
              border: Border(
                  bottom: BorderSide(
                color: iconGray.withOpacity(0.5),
                width: 0.2,
              ))),
        ),
        shadowColor: Colors.transparent,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(backIcon, size: mediumIconSize)),
        title: Text(title,
            style: Get.theme.textTheme.headlineSmall
                ?.copyWith(fontWeight: FontWeight.w600)));
  }
}
