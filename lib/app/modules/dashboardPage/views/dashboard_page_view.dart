import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/Login/views/login_view.dart';
import 'package:hospital_maraba/app/modules/signIn/views/sign_in_view.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import '../controllers/dashboard_page_controller.dart';

class DashboardPageView extends GetView<DashboardPageController> {
  @override
  final controller = Get.put(DashboardPageController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardPageController>(builder: (controller) {
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
          // iconSize: 32,
          selectedIconTheme:
              IconThemeData(size: 32, color: Get.theme.canvasColor),
          // unselectedFontSize: 15,
          unselectedItemColor: Get.theme.canvasColor.withOpacity(0.8),
          // selectedItemColor: Colors.black,
          onTap: controller.changePageIndex,
          currentIndex: controller.pageIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.login,
              ),
              label: "Login",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
              ),
              label: "Cadastro",
            ),
          ],
        ),
      );
    });
  }
}
