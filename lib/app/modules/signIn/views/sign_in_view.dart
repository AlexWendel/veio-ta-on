import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import 'package:hospital_maraba/app/widgets/button.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetResponsiveView<SingInController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        title: Text("Crie sua conta", style: appbartext),
        backgroundColor: backGround,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Divider(height: 10, color: iconGray),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
            // height: 50,
            width: double.maxFinite,
            child: Text(
              "Preencha os campos abaixo para criar sua conta",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
            ),
          ),
          Divider(height: 20, color: Colors.transparent),
          InputText(hintText: "Nome completo", icon: Icon(Icons.person)),
          Divider(height: 20, color: Colors.transparent),
          InputText(hintText: "Digite o e-mail", icon: Icon(Icons.email)),
          Divider(height: 20, color: Colors.transparent),
          InputText(hintText: "Confirme o email", icon: Icon(Icons.email)),
          Divider(height: 20, color: Colors.transparent),
          InputText(hintText: "Digite a senha"),
          Divider(height: 20, color: Colors.transparent),
          InputText(hintText: "Confirme a senha"),
          Divider(height: 50, color: Colors.transparent),
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
