// ignore_for_file: unnecessary_overrides
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/auth_controller.dart';
import 'package:hospital_maraba/app/models/register_form.dart';
import 'package:hospital_maraba/app/widgets/input_text.dart';

class SignInController extends GetxController {
  final nameInput = CustomInputText(
          hintText: "Nome completo", icon: Icon(Icons.person_outline_rounded))
      .obs;
  final cpfInput =
      CPFInputText(icon: Icon(Icons.person_outline_rounded), hintText: "CPF")
          .obs;
  final rgInput =
      RGInputText(icon: Icon(Icons.person_outline_rounded), hintText: "RG").obs;
  final susCardInput = SusCardInputText(
          icon: Icon(Icons.person_outline_rounded), hintText: "Cartão SUS")
      .obs;
  final phoneInput =
      PhoneInputText(icon: Icon(Icons.phone), hintText: "Telefone").obs;
  final emailInput = CustomInputText(
          hintText: "Digite o e-mail", icon: Icon(Icons.email_outlined))
      .obs;
  final emailConfirmInput = CustomInputText(
          hintText: "Confirme o e-mail", icon: Icon(Icons.email_outlined))
      .obs;
  final passwordInput = CustomInputText(
    hintText: "Digite a senha",
    obfuscatedField: true,
    icon: Icon(Icons.lock_outline),
  ).obs;
  final passwordConfirmInput = CustomInputText(
    hintText: "Confirme a senha",
    obfuscatedField: true,
    icon: Icon(Icons.lock_outline),
  ).obs;

  register() {
    AuthController.instance.register(RegisterForm(
      name: nameInput.value.textFieldController.value.value.text,
      cpf: maskCPF.getUnmaskedText(),
      rg: maskRG.getUnmaskedText(),
      susNumber: maskSusCard.getUnmaskedText(),
      phone: maskPhone.getUnmaskedText(),
      email: emailInput.value.textFieldController.value.value.text,
      emailConfirmation:
          emailConfirmInput.value.textFieldController.value.value.text,
      password: passwordInput.value.textFieldController.value.value.text,
      passwordConfirmation:
          passwordConfirmInput.value.textFieldController.value.value.text,
    ));
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
