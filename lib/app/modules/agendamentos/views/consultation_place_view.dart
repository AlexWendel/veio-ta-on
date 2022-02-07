import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/bottomNavBarDesignScreen.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/genericButton.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import 'package:hospital_maraba/app/widgets/scrollBox.dart';
import '../../../widgets/TitleSliverAppBar.dart';
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
              hintText: "Procurar um local de atendimento"),
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
                GenericButton(
                    color: Get.theme.primaryColor,
                    onPressed: () => Get.back(),
                    iconAtLeft: true,
                    text: Text("Voltar etapa",
                        style: Get.theme.textTheme.headline6
                            ?.copyWith(fontWeight: FontWeight.w500)),
                    icon: Icon(Icons.arrow_back_ios_outlined)),
                GenericButton(
                    color: Get.theme.primaryColor,
                    onPressed: () => Get.to(() => ConsultationMedicView()),
                    text: Text("Próxima etapa",
                        style: Get.theme.textTheme.headline6
                            ?.copyWith(fontWeight: FontWeight.w500)),
                    icon: Icon(Icons.arrow_forward_ios_rounded))
              ]),
        ));
  }
}
