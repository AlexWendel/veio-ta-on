import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/authcontrolller.dart';
import 'package:hospital_maraba/app/models/registerform.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';

class SingInController extends GetxController {
  final nameInput = InputText(
          hintText: "Nome completo", icon: Icon(Icons.person_outline_rounded))
      .obs;
  final emailInput =
      InputText(hintText: "Digite o e-mail", icon: Icon(Icons.email_outlined))
          .obs;
  final emailConfirmInput =
      InputText(hintText: "Confirme o e-mail", icon: Icon(Icons.email_outlined))
          .obs;
  final passwordInput = InputText(
    hintText: "Digite a senha",
    obfuscatedField: true,
    icon: Icon(Icons.lock_outline),
  ).obs;
  final passwordConfirmInput = InputText(
    hintText: "Confirme a senha",
    obfuscatedField: true,
    icon: Icon(Icons.lock_outline),
  ).obs;

  register() {
    AuthController.instance.register(RegisterForm(
        name: nameInput.value.textFieldController.value.value.text,
        email: emailInput.value.textFieldController.value.value.text,
        password: passwordInput.value.textFieldController.value.value.text));
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
