import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

import '../../../utils/colorTheme.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
        BottomNavigationBarItem(icon: Icon(Icons.login), label: "Criar Conta"),
        BottomNavigationBarItem(icon: Icon(Icons.login), label: "")
      ]),
      backgroundColor: backGround,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: textFieldGray,
              height: 50,
              child: TextField(),
            ),
            Container(
              color: textFieldGray,
              height: 50,
              child: TextField(),
            ),
            Container(
              color: button,
              height: 50,
              child: MaterialButton(
                onPressed: null,
                child: Text("Entrar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
