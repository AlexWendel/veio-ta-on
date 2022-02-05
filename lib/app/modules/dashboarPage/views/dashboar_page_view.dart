import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/modules/singIn/views/sing_in_view.dart';

import '../controllers/dashboar_page_controller.dart';

class DashboarPageView extends GetView<DashboarPageController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboarPageController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.pageIndex,
            children: [HomeView(), SingInView()],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
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
