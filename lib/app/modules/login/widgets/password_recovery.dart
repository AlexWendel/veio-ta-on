import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/auth_controller.dart';
import 'package:hospital_maraba/app/utils/common.colors.dart';

class Senha extends GetResponsiveWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 700,
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Divider(
              height: 5,
              color: Colors.transparent,
            ),
            Container(
              alignment: Alignment.topCenter,
              height: 5,
              width: 80,
              margin: EdgeInsets.symmetric(horizontal: 150),
              decoration: BoxDecoration(
                  color: Get.theme.primaryColor,
                  borderRadius: BorderRadius.circular(50)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 50,
              width: double.maxFinite,
              child: Text(
                "Esqueceu seus dados?",
                style: Get.textTheme.displaySmall
                    ?.copyWith(color: headerGray, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              //padding: EdgeInsets.only(left: 20),

              width: double.maxFinite,
              child: Text(
                "Preencha os campos abaixo, e enviaremos um link de recuperação de senha para seu email.",
                style: Get.theme.textTheme.headline5
                    ?.copyWith(color: Colors.black54),
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
                cursorColor: Get.theme.primaryColor,
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
              height: 10,
            ),
            Container(
                height: 60,
                width: 50,
                child: ElevatedButton(
                  child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text("Enviar",
                          style: Get.theme.textTheme.headline5?.copyWith(
                              color: Get.theme.canvasColor,
                              fontWeight: FontWeight.w600))),
                  onPressed: () {
                    AuthController.instance.recuperarSenha();
                    Get.back(closeOverlays: true);
                  },
                )),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
