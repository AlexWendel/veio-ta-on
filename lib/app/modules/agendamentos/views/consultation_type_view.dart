import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/bottomNavBarDesignScreen.dart';

import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import 'package:hospital_maraba/app/widgets/scrollBox.dart';
import 'consultation_place_view.dart';

class ConsultationTypeView extends GetView {
  @override
  Widget build(BuildContext context) {
    return BottomNavBarDesignScreen(
        bottomNavBar: Container(
          // height: 70,
          color: backGround,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
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
                  onPressed: () {
                    Get.to(() => ConsultationPlaceView());
                  },
                  child: Row(
                    children: [
                      Text(
                        "Próxima etapa",
                        style: textonormal,
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        sliverAppBar: TitleSliverAppBar(title: "Escolha o exame"),
        body: Column(children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Etapa 1: Tipo de exame",
                    style: Get.theme.textTheme.displaySmall?.copyWith(
                        color: Colors.black87, fontWeight: FontWeight.w800)),
                SizedBox(height: 10),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    "Escolha o tipo de exame que deseja agendar:",
                    style: Get.theme.textTheme.headlineSmall
                        ?.copyWith(color: Colors.black54),
                  ),
                )
              ]),
          SizedBox(height: 20),
          InputText(
              icon: Icon(Icons.search),
              hintText: "Procurar por um tipo de exame"),
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
        ]));
  }
}
