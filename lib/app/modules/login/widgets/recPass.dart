import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hospital_maraba/app/modules/login/widgets/inputWdget.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class RecPass extends GetResponsiveWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () async {
        Get.defaultDialog(
          title: "Recuperar senha ",
          titleStyle: TextStyle(fontSize: 25),
          middleTextStyle: TextStyle(fontSize: 20),
          backgroundColor: Colors.white,
          radius: 4,
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Será enviado um link de recuperação para seu email insira seus dados para continuar"),
              SizedBox(
                height: 30,
              ),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: defaultFontSize,
                  color:
                      // Color(0xff545454
                      Get.theme.highlightColor,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                // focusNode: passwordFocusNode,
                style: TextStyle(color: Colors.black87),

                textInputAction: TextInputAction.done,
                // controller: passwordController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  // filled: obscure,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Get.theme.primaryColor)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  hintText: "Digite seu email",
                  hintStyle: TextStyle(
                      fontSize: defaultFontSize / context.textScaleFactor),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: defaultFontSize,
                  color:
                      // Color(0xff545454
                      Get.theme.highlightColor,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                // focusNode: passwordFocusNode,
                style: TextStyle(color: Colors.black87),

                textInputAction: TextInputAction.done,
                // controller: passwordController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  // filled: obscure,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Get.theme.primaryColor)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  hintText: "Confirme seu email",
                  hintStyle: TextStyle(
                      fontSize: defaultFontSize / context.textScaleFactor),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "CPF",
                style: TextStyle(
                  fontSize: defaultFontSize,
                  color:
                      // Color(0xff545454
                      Get.theme.highlightColor,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                // focusNode: passwordFocusNode,
                style: TextStyle(color: Colors.black87),

                textInputAction: TextInputAction.done,
                // controller: passwordController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  // filled: obscure,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Get.theme.primaryColor)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  hintText: "Digite seu CPF",
                  hintStyle: TextStyle(
                      fontSize: defaultFontSize / context.textScaleFactor),
                ),
              ),
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
      child: Text(
        "Esqueci minha senha",
        style: TextStyle(
            fontSize: defaultFontSize / context.textScaleFactor,
            color: Get.theme.secondaryHeaderColor),
      ),
    );
  }
}
