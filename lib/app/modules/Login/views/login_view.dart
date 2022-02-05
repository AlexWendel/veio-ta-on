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
          child: Padding(
        padding: EdgeInsets.only(left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 60,
                child: TextField(
                    decoration: InputDecoration(
                  hintText: "Digite seu e-mail",
                  prefixIcon: Icon(Icons.email),
                ))),
            Divider(
              color: Colors.transparent,
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Digite sua senha",
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 20,
            ),
            Container(
                height: 60,
                width: 1000,
                child: MaterialButton(
                    child: Text("Entrar"),
                    onPressed: () {
                      Get.to(HomeView());
                    }))
          ],
        ),
      )),
    );
  }
}
