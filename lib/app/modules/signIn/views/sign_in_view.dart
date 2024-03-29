import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/color_theme.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  @override
  final controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: ScrollController(),
      padding: EdgeInsets.symmetric(horizontal: 20),
      children: [
        Container(
            color: Get.theme.canvasColor,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 30, bottom: 20, left: 5, right: 5),
            // height: 50,
            width: double.maxFinite,
            child: Column(children: [
              Text("Preencha os campos abaixo para criar sua conta:",
                  style: Get.theme.textTheme.displaySmall
                      ?.copyWith(color: Colors.black54)),
              SizedBox(height: 8),
              Divider(
                  height: 15 * context.textScaleFactor,
                  color: cardGray.withOpacity(0.1)),
            ])),
        controller.nameInput.value,
        SizedBox(height: 2),
        controller.cpfInput.value,
        SizedBox(height: 2),
        controller.rgInput.value,
        SizedBox(height: 2),
        controller.susCardInput.value,
        SizedBox(height: 20),
        controller.phoneInput.value,
        SizedBox(height: 2),
        controller.emailInput.value,
        SizedBox(height: 2),
        controller.emailConfirmInput.value,
        SizedBox(height: 20),
        controller.passwordInput.value,
        SizedBox(height: 2),
        controller.passwordConfirmInput.value,
        SizedBox(height: 20),
        ElevatedButton(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text("Criar conta",
                  style: Get.theme.textTheme.headline5?.copyWith(
                      color: Get.theme.canvasColor,
                      fontWeight: FontWeight.w600))),
          onPressed: () {
            controller.register();
          },
        ),
        Divider(height: 30, color: Colors.transparent),
      ],
      // ),
    );
  }
}
