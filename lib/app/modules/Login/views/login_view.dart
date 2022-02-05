import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: verdeBosta,
            height: 90,
            width: 200,
            child: MaterialButton(
                child: Text("Entar"),
                onPressed: () {
                  Get.to(HomeView());
                })),
      ),
    );
  }
}
