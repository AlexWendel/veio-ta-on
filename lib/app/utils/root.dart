import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/auth_controller.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/views/home_view.dart';

class Root extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthController>().user != null)
          ? HomeView()
          : DashboardView();
    });
  }
}
