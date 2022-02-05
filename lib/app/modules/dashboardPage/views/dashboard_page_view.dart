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
            index: controller.pageIndex,
            children: [LoginView(), SignInView()],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: backGround,
          backgroundColor: verdeBosta,
          onTap: controller.changePageIndex,
          currentIndex: controller.pageIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
            BottomNavigationBarItem(
                icon: Icon(Icons.login), label: "Criar conta")
          ],
        ),
      );
    });
  }
}
