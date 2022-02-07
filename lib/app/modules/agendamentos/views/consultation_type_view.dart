import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';

import 'package:hospital_maraba/app/modules/bottomNavBarDesignScreen.dart';

import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardAgendamentos.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/genericButton.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import 'package:hospital_maraba/app/widgets/scrollBox.dart';
import '../controllers/agendamentos_controller.dart';
import 'consultation_place_view.dart';

class ConsultationTypeView extends GetView<AgendamentosController> {
  @override
  Widget build(BuildContext context) {
    AgendamentosController controller = Get.put(AgendamentosController());
    return BottomNavBarDesignScreen(
      bottomNavBar: Container(
        // height: 70,
        color: backGround,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GenericButton(
                color: Get.theme.primaryColor,
                onPressed: () => Get.to(() => ConsultationPlaceView()),
                text: Text("Próxima etapa",
                    style: Get.theme.textTheme.headline6
                        ?.copyWith(fontWeight: FontWeight.w500)),
                icon: Icon(Icons.arrow_forward_ios_rounded))
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
          CardAgendamentos(
              text: "Neurologista",
              description: "Medico para a sua cabeça",
              icon: Icon(Icons.tab),
              onTap: () {}),
          CardAgendamentos(
              text: "Neurologista",
              description: "Medico para a sua cabeça",
              icon: Icon(Icons.tab),
              onTap: () {}),
          CardAgendamentos(
              text: "Neurologista",
              description: "Medico para a sua cabeça",
              icon: Icon(Icons.tab),
              onTap: () {})
        ])
      ]),
    );
  }
}
