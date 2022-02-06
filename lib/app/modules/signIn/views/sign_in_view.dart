import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import 'package:hospital_maraba/app/widgets/button.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SingInController> {
  @override
  Widget build(BuildContext context) {
    Get.put(SingInController());

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 30, bottom: 20, left: 5, right: 5),
              // height: 50,
              width: double.maxFinite,
              child: Column(children: [
                Text("Preencha os campos abaixo para criar sua conta",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 30)),
                Divider(height: 15 * context.textScaleFactor, color: cardGray),
              ])),
          controller.nameInput.value,
          SizedBox(height: 20),
          controller.emailInput.value,
          SizedBox(height: 2),
          controller.emailConfirmInput.value,
          SizedBox(height: 20),
          controller.passwordInput.value,
          SizedBox(height: 2),
          controller.passwordConfirmInput.value,
          SizedBox(height: 20),
          Button(
            text: "Criar conta",
            onPressed: () => controller.register(),
          ),
          Divider(height: 30, color: Colors.transparent),
        ],
      ),
    );
  }
}
