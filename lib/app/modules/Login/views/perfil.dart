import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/authcontrolller.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/bottomNavBarDesignScreen.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/modules/settings/widgets/cardConsultas.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/genericButton.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

class PerfilView extends GetView {
  final nomeInput =
      InputText(icon: Icon(Icons.edit), hintText: "Digite seu novo nome");

  final cpfInput = InputText(
      icon: Icon(Icons.document_scanner), hintText: "Digite seu novo CPF");

  final emailInput =
      InputText(icon: Icon(Icons.email), hintText: "Digite seu novo Email");

  final passwordInput =
      InputText(icon: Icon(Icons.lock), hintText: "Digite sua nova senha");

  @override
  Widget build(BuildContext context) {
    return BottomNavBarDesignScreen(
      sliverAppBar: TitleSliverAppBar(title: "Perfil"),
      bottomNavBar: Container(
        color: backGround,
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GenericButton(
                  icon: Icon(Icons.arrow_back_ios_outlined,
                      color: Get.theme.canvasColor),
                  onPressed: () {
                    () => Get.back();
                  },
                  iconAtLeft: true,
                  color: Get.theme.errorColor,
                  text: Text(
                    "Cancelar",
                    style: Get.theme.textTheme.headline6,
                  ),
                ),
                GenericButton(
                  icon:
                      Icon(Icons.check_outlined, color: Get.theme.canvasColor),
                  color: Get.theme.primaryColor,
                  onPressed: () {
                    if (emailInput.textFieldController.value.text.isNotEmpty) {
                      AuthController.instance.currentUser.value.email =
                          emailInput.textFieldController.value.text;
                    }

                    if (cpfInput.textFieldController.value.text.isNotEmpty) {
                      AuthController.instance.currentUser.value.cpf =
                          cpfInput.textFieldController.value.text;
                    }

                    if (passwordInput
                        .textFieldController.value.text.isNotEmpty) {
                      AuthController.instance.currentUser.value.email =
                          emailInput.textFieldController.value.text;
                    }

                    if (nomeInput.textFieldController.value.text.isNotEmpty) {
                      AuthController.instance.currentUser.value.name =
                          nomeInput.textFieldController.value.text;
                    }
                    Get.to(() => HomeView());
                  },
                  text: Text(
                    "  Confirmar  ",
                    style: Get.theme.textTheme.headline6,
                  ),
                ),
              ],
            )),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Configurações de perfil",
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontSize: defaultFontSize / Get.textScaleFactor,
              color: Colors.black54),
        ),
        Foto(context),
        SizedBox(height: 8),
        Text(
          "Nome",
          style: TextStyle(
              color: Color.fromRGBO(120, 120, 120, 1),
              fontWeight: FontWeight.w300,
              fontSize: defaultFontSize / context.textScaleFactor),
        ),
        nomeInput,
        SizedBox(height: 8),
        InputText(icon: Icon(Icons.edit), hintText: "Digite seu novo nome"),
        SizedBox(height: 8),
        Text(
          "Foto",
          style: TextStyle(
              color: Color.fromRGBO(160, 160, 160, 1),
              fontWeight: FontWeight.w400,
              fontSize: defaultCardDescriptionSize / context.textScaleFactor),
        ),
        SizedBox(height: 8),
        InkWell(
          onTap: () {},
          child: Container(
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: textFieldGray,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Color.fromRGBO(
                    160, 160, 160, 1), //                   <--- border color
                width: 1.0,
              ),
            ),
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.photo,
                  color: iconGray,
                ),
              ),
              Text(
                "Clique para editar a foto",
                style: TextStyle(
                    color: Color.fromRGBO(160, 160, 160, 1),
                    fontWeight: FontWeight.w400,
                    fontSize:
                        defaultCardDescriptionSize / context.textScaleFactor),
              ),
            ]),
          ),
        ),
        SizedBox(height: 8),
        Text(
          "CPF",
          style: TextStyle(
              color: Color.fromRGBO(120, 120, 120, 1),
              fontWeight: FontWeight.w300,
              fontSize: defaultFontSize / context.textScaleFactor),
        ),
        SizedBox(height: 8),
        cpfInput,
        SizedBox(height: 8),
        Text(
          "Email",
          style: TextStyle(
              color: Color.fromRGBO(120, 120, 120, 1),
              fontWeight: FontWeight.w300,
              fontSize: defaultFontSize / context.textScaleFactor),
        ),
        SizedBox(height: 8),
        emailInput,
        SizedBox(height: 8),
        InputText(icon: Icon(Icons.email), hintText: "Confirmar novo email"),
        SizedBox(height: 8),
        Text(
          "Senha",
          style: TextStyle(
              color: Color.fromRGBO(120, 120, 120, 1),
              fontWeight: FontWeight.w300,
              fontSize: defaultFontSize / context.textScaleFactor),
        ),
        SizedBox(height: 8),
        passwordInput,
        SizedBox(height: 8),
        InputText(icon: Icon(Icons.lock), hintText: "Confirmar sua nova senha")
      ]),
    );
  }

  Container Foto(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      alignment: Alignment.center,
      // height: 200,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Get.theme.highlightColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(constraints: BoxConstraints.expand(), child: 
        Row(
          children: [
            Container(
              width: 64,
              height: 64,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("imgs/cj.png"),
                ),
              ),
            ),
            VerticalDivider(
              width: 10,
              color: Colors.transparent,
            ),
            Container(
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        "Nome:",
                        style: TextStyle(
                            color: Color.fromRGBO(120, 120, 120, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: Get.theme.textTheme.headline6?.fontSize),
                      ),
                      Container(
                        width: 150,
                        child: Obx(() => Text(
                              AuthController.instance.currentUser.value.name,
                              maxLines: 1,
                              style: TextStyle(
                                  color: Color.fromRGBO(160, 160, 160, 1),
                                  fontWeight: FontWeight.w400,
                                  fontSize:
                                      Get.theme.textTheme.headline6?.fontSize),
                            )),
                      )
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        "CPF:",
                        style: TextStyle(
                            color: Color.fromRGBO(120, 120, 120, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: Get.theme.textTheme.headline6?.fontSize),
                      ),
                      Container(
                          width: 150,
                          child: Obx(
                            () => Text(
                              AuthController.instance.currentUser.value.cpf,
                              maxLines: 1,
                              style: TextStyle(
                                  color: Color.fromRGBO(160, 160, 160, 1),
                                  fontWeight: FontWeight.w400,
                                  fontSize:
                                      Get.theme.textTheme.headline6?.fontSize),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(height: 8),
                  FittedBox(
                      child: Row(
                    children: [
                      Text(
                        "Email:",
                        style: TextStyle(
                            color: Color.fromRGBO(120, 120, 120, 1),
                            fontWeight: FontWeight.w600,
                            fontSize: Get.theme.textTheme.headline6?.fontSize),
                      ),
                      Container(
                        width: 150,
                        child: Obx(() => Text(
                              AuthController.instance.currentUser.value.email,
                              maxLines: 1,
                              style: TextStyle(
                                  color: Color.fromRGBO(160, 160, 160, 1),
                                  fontWeight: FontWeight.w400,
                                  fontSize:
                                      Get.theme.textTheme.headline6?.fontSize),
                            )),
                      )
                    ],
                  )),
                ],
              ),
            ),
          ],
        )
      ]),
    );
  }
}
