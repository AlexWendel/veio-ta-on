import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/bottomNavBarDesignScreen.dart';
import 'package:hospital_maraba/app/modules/settings/widgets/cardConsultas.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

class PerfilView extends GetView {
  @override
  Widget build(BuildContext context) {
    return BottomNavBarDesignScreen(
      sliverAppBar: TitleSliverAppBar(title: "Perfil"),
      bottomNavBar: Container(
        color: backGround,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              height: 60,

              // width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Get.theme.errorColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                onPressed: () {
                  Get.back();
                },
                child: Text(
                  "  Cancelar  ",
                  style: Get.theme.textTheme.headline6,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 60,
              // width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                onPressed: () async {},
                child: Text(
                  "  Confirmar  ",
                  style: Get.theme.textTheme.headline6,
                ),
              ),
            ),
          ],
        ),
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
        InputText(
            icon: Icon(Icons.document_scanner),
            hintText: "Digite seu novo CPF"),
        SizedBox(height: 8),
        Text(
          "Email",
          style: TextStyle(
              color: Color.fromRGBO(120, 120, 120, 1),
              fontWeight: FontWeight.w300,
              fontSize: defaultFontSize / context.textScaleFactor),
        ),
        SizedBox(height: 8),
        InputText(icon: Icon(Icons.email), hintText: "Digite seu novo Email"),
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
        InputText(icon: Icon(Icons.lock), hintText: "Digite sua nova senha"),
        SizedBox(height: 8),
        InputText(icon: Icon(Icons.lock), hintText: "Confirmar sua nova senha")
      ]),
    );
  }

  Container Foto(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // height: 200,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Get.theme.highlightColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            width: 90,
            height: 90,
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
          Column(
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
                        fontSize: defaultFontSize / context.textScaleFactor),
                  ),
                  Container(
                    width: 260,
                    child: Text(
                      "Paulete Maragarete da Silva",
                      maxLines: 1,
                      style: TextStyle(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: defaultCardDescriptionSize /
                              context.textScaleFactor),
                    ),
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
                        fontSize: defaultFontSize / context.textScaleFactor),
                  ),
                  Container(
                    width: 260,
                    child: Text(
                      "000 000 000 000",
                      maxLines: 1,
                      style: TextStyle(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: defaultCardDescriptionSize /
                              context.textScaleFactor),
                    ),
                  )
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    "Email:",
                    style: TextStyle(
                        color: Color.fromRGBO(120, 120, 120, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: defaultFontSize / context.textScaleFactor),
                  ),
                  Container(
                    width: 260,
                    child: Text(
                      "teste@snst.dev",
                      maxLines: 1,
                      style: TextStyle(
                          color: Color.fromRGBO(160, 160, 160, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: defaultCardDescriptionSize /
                              context.textScaleFactor),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
