import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/consultation_type_view.dart';
import 'package:hospital_maraba/app/modules/bottomNavBarDesignScreen.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/appBarr.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import 'package:hospital_maraba/app/widgets/scrollBox.dart';

import '../../../widgets/TitleSliverAppBar.dart';
import 'consultation_date_view.dart';
import 'consultation_medic_view.dart';

class ConsultationPlaceView extends GetView {
  @override
  Widget build(BuildContext context) {
    return BottomNavBarDesignScreen(
        body: Column(children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Etapa 2: Local da consulta",
                    style: Get.theme.textTheme.displaySmall?.copyWith(
                        color: Colors.black87, fontWeight: FontWeight.w800)),
                SizedBox(height: 10),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "Selecione a unidade de atendimento:",
                    style: Get.theme.textTheme.headlineSmall
                        ?.copyWith(color: Colors.black54),
                  ),
                )
              ]),
          SizedBox(height: 20),
          InputText(
              icon: Icon(Icons.search),
              hintText: "Pesquisar unidade de atendimento"),
          Divider(
            color: Colors.transparent,
            height: 10,
          ),
          ScrollBox(itemList: [
            CardHome(
                text: "Neurologista",
                description: "Medico para a sua cabeça",
                icon: Icon(Icons.tab),
                onTap: () {}),
            CardHome(
                text: "Neurologista",
                description: "Medico para a sua cabeça",
                icon: Icon(Icons.tab),
                onTap: () {}),
            CardHome(
                text: "Neurologista",
                description: "Medico para a sua cabeça",
                icon: Icon(Icons.tab),
                onTap: () {})
          ])
        ]),
        sliverAppBar: TitleSliverAppBar(title: "Escolha o local"),
        bottomNavBar: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          // height: 70,
          color: backGround,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                // width: 200,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    onPressed: () {
                      Get.back();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.arrow_back_ios_rounded),
                        Text(
                          "Voltar",
                          style: TextStyle(
                              fontSize:
                                  defaultFontSize / context.textScaleFactor,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                // width: 200,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 60,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    onPressed: () {
                      Get.to(() => ConsultationMedicView());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Continuar",
                          style: TextStyle(
                              fontSize:
                                  defaultFontSize / context.textScaleFactor,
                              color: Colors.black54),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
