import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import 'package:hospital_maraba/app/widgets/button.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetResponsiveView<SingInController> {
  @override
  Widget build(BuildContext context) {
    print(context.textScaleFactor);
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
          InputText(
              hintText: "Nome completo",
              icon: Icon(Icons.person_outline_rounded)),
          SizedBox(height: 20),
          InputText(
              hintText: "Digite o e-mail", icon: Icon(Icons.email_outlined)),
          SizedBox(height: 2),
          InputText(
              hintText: "Confirme o email", icon: Icon(Icons.email_outlined)),
          SizedBox(height: 20),
          InputText(
            hintText: "Digite a senha",
            obfuscatedField: true,
            icon: Icon(Icons.lock_outline),
          ),
          SizedBox(height: 2),
          InputText(
            hintText: "Confirme a senha",
            obfuscatedField: true,
            icon: Icon(Icons.lock_outline),
          ),
          SizedBox(height: 20),
          Button(
            text: "Criar conta",
            onPressed: () {},
          ),
          Divider(height: 30, color: Colors.transparent),
        ],
      ),
    );
  }
}
