import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: mainTheme,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
