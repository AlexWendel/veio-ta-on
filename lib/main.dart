import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:hospital_maraba/app/utils/colorTheme.dart';
=======
import 'package:hospital_maraba/app/authcontrolller.dart';
>>>>>>> 9bf400b57ec96388265ade84f03d933e85775100

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));

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
