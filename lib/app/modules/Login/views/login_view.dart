import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/authcontrolller.dart';
import 'package:hospital_maraba/app/models/loginform.dart';
import 'package:hospital_maraba/app/modules/Login/widgets/loginFormWidget.dart';
import 'package:hospital_maraba/app/modules/Login/widgets/senha.dart';
import 'package:hospital_maraba/app/modules/dashboardPage/views/dashboard_page_view.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/button.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  final controller = Get.put(LoginController());
  final loginForm = LoginFormWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, right: 5),
              width: Get.width / 1.6,
              height: Get.height / 2.3,
              decoration: BoxDecoration(
                // shape: BoxShape.circle,
                // color: backGround,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('imgs/realLogo.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            LoginFormWidget()
          ],
        ),
      )),
    );
  }
}
