import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hospital_maraba/app/modules/login/widgets/inputWdget.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class ButtonSigin extends GetResponsiveWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 200),
      child: ElevatedButton(
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text("ENTRAR",
                style: Get.theme.textTheme.headline5?.copyWith(
                    color: Get.theme.canvasColor,
                    fontWeight: FontWeight.w600))),
        onPressed: () {
          Get.defaultDialog(
            title: "Recuperar senha as sah aja a a aka a s adka ",
            titleStyle: TextStyle(fontSize: 25),
            middleTextStyle: TextStyle(fontSize: 20),
            backgroundColor: Colors.white,
            radius: 4,
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Será enviado um link de recuperação para seu"),
                Text("email insira seus dados para continuar"),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: titleFontSize / context.textScaleFactor,
                    color:
                        // Color(0xff545454
                        Get.theme.highlightColor,
                  ),
                ),
                InputWidget(inputText: inputText, obscure: obscure, icone: icone),
                Container(child: Text("Hello 1")),
                Container(child: Text("Hello 2")),
                Container(child: Text("Hello 3")),
                Container(child: Text("Hello 1")),
                Container(child: Text("Hello 2")),
                Container(child: Text("Hello 3")),
                Container(child: Text("Hello 1")),
                Container(child: Text("Hello 2")),
                Container(child: Text("Hello 3")),
              ],
            ),
            actions: [
              ElevatedButton(
                child: Text("Enviar"),
                onPressed: () {},
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.white,
                    side: BorderSide(
                      width: 1.0,
                      color: Color(0xff757373),
                    )),
                child: Text(
                  "Cancelar",
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () {
                  Get.back();
                },
              ),
            ],
            barrierDismissible: true,
          );
        },
      ),
    );
  }
}
