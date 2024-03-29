import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/Login/widgets/login_form_widget.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  final controller = Get.put(LoginController());
  final loginForm = LoginFormWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          controller: ScrollController(),
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, right: 5),
              width: Get.width / 1.6,
              height: Get.height / 2.3,
              decoration: BoxDecoration(
                color: Get.theme.canvasColor,
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            LoginFormWidget()
          ],
        ),
      ),
    );
  }
}
