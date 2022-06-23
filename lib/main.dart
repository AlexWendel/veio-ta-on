import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hospital_maraba/app/auth_binding.dart';
import 'package:hospital_maraba/app/auth_controller.dart';
import 'package:hospital_maraba/app/utils/color_theme.dart';
import 'package:hospital_maraba/app/utils/root.dart';
import 'app/data/auth_service.dart';
import 'app/data/database.dart';
import 'firebase_options.dart';
import 'app/modules/home/controllers/home_controller.dart';
import 'app/routes/app_pages.dart';

Future<void> initServices() async {
  await Get.putAsync<AuthService>(() async => AuthService());
  Get.lazyPut(() => DatabaseService());
  print("Starting Auth Service");
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  await Hive.initFlutter();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Get.put(HomeController());
  runApp(
    GetMaterialApp(
      title: "Agendamento Fácil",
      theme: mainTheme,
      initialBinding: AuthBinding(),
      home: Root(),
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.key,
    ),
  );
}
