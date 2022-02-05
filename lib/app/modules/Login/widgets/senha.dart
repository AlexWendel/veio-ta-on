import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';

class Senha extends GetResponsiveWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Divider(
              height: 5,
              color: Colors.transparent,
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 5,
              width: 80,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: verdeBosta, borderRadius: BorderRadius.circular(50)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 50,
              width: double.maxFinite,
              child: Text(
                "Esqueceu seus dados?",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              //padding: EdgeInsets.only(left: 20),
              height: 50,
              width: double.maxFinite,
              child: Text(
                "preencha os campos, enviaremos um link de recuperação de senha para seu email.",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 20,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              child: TextField(
                cursorColor: verdeBosta,
                decoration: InputDecoration(
                  hintText: "Digite sua senha",
                  hintStyle: TextStyle(fontSize: 20),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 27,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 20,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              child: TextField(
                cursorColor: verdeBosta,
                decoration: InputDecoration(
                  hintText: "Digite seu email",
                  hintStyle: TextStyle(fontSize: 20),
                  prefixIcon: Icon(
                    Icons.email,
                    size: 27,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 20,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              child: TextField(
                cursorColor: verdeBosta,
                decoration: InputDecoration(
                  hintText: "Confirme seu email",
                  hintStyle: TextStyle(fontSize: 20),
                  prefixIcon: Icon(
                    Icons.email,
                    size: 27,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 20,
            ),
            Container(
              height: 60,
              width: 200,
              child: ElevatedButton(
                  child: Text(
                    "Enviar",
                    style: textonormal,
                  ),
                  onPressed: () {
                    // Get.to(() => HomeView());
                  }),
            ),
            Divider(
              color: Colors.transparent,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
