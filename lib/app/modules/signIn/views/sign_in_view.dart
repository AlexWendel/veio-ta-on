import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';

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
        padding: EdgeInsets.only(left: 5, right: 5),
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
          Container(
            height: 60,
            padding: EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: verdeBosta,
              decoration: InputDecoration(
                hintText: "Nome completo ",
                hintStyle: TextStyle(fontSize: 20),
                prefixIcon: Icon(
                  Icons.person,
                  size: 27,
                ),
              ),
            ),
          ),
          Divider(height: 20, color: Colors.transparent),
          Container(
            height: 60,
            padding: EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: verdeBosta,
              decoration: InputDecoration(
                hintText: "Digite o email ",
                hintStyle: TextStyle(fontSize: 20),
                prefixIcon: Icon(
                  Icons.email,
                  size: 27,
                ),
              ),
            ),
          ),
          Divider(height: 20, color: Colors.transparent),
          Container(
            height: 60,
            padding: EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: verdeBosta,
              decoration: InputDecoration(
                hintText: "Confirme o email ",
                hintStyle: TextStyle(fontSize: 20),
                prefixIcon: Icon(
                  Icons.email,
                  size: 27,
                ),
              ),
            ),
          ),
          Divider(height: 20, color: Colors.transparent),
          Container(
            height: 60,
            padding: EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: verdeBosta,
              decoration: InputDecoration(
                hintText: "Digite a senha ",
                hintStyle: TextStyle(fontSize: 20),
                prefixIcon: Icon(
                  Icons.lock,
                  size: 27,
                ),
              ),
            ),
          ),
          Divider(height: 20, color: Colors.transparent),
          Container(
            height: 60,
            padding: EdgeInsets.only(left: 20, right: 20),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: verdeBosta,
              decoration: InputDecoration(
                hintText: "Confirme a senha ",
                hintStyle: TextStyle(fontSize: 20),
                prefixIcon: Icon(
                  Icons.lock,
                  size: 27,
                ),
              ),
            ),
          ),
          Divider(height: 50, color: Colors.transparent),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 120),
            height: 60,
            width: 200,
            child: ElevatedButton(
                child: Text(
                  "Criar conta",
                  style: textonormal,
                ),
                onPressed: () {
                  // Get.to(() => HomeView());
                }),
          ),
          Divider(height: 30, color: Colors.transparent),
        ],
      ),
    );
  }
}
