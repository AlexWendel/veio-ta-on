import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/Login/views/login_view.dart';
import 'package:hospital_maraba/app/modules/signIn/views/sign_in_view.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import '../controllers/dashboard_page_controller.dart';

class DashboardPageView extends GetView<DashboardPageController> {
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
          // fixedColor: Colors.black12,
          selectedFontSize: 18,
          iconSize: 20,
          unselectedFontSize: 15,
          unselectedItemColor: Colors.black45,
          selectedItemColor: Colors.black,
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
              label: "Criar conta",
            ),
          ],
        ),
      );
    });
  }
}
