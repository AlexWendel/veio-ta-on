import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/login/views/login_view.dart';
import 'package:hospital_maraba/app/modules/signIn/views/sign_in_view.dart';
import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  final controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.pageIndex.value,
            children: [LoginView(), SignInView()],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Get.theme.canvasColor,
          backgroundColor: Get.theme.primaryColor,
          selectedFontSize: 18,
          selectedIconTheme:
              IconThemeData(size: 32, color: Get.theme.canvasColor),
          unselectedItemColor: Get.theme.canvasColor.withOpacity(0.8),
          onTap: controller.changePageIndex,
          currentIndex: controller.pageIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.login,
              ),
              label: "Entrar",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
              ),
              label: "Criar conta",
            ),
          ],
        ),
      );
    });
  }
}
