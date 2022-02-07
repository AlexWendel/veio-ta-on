import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/consultation_type_view.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/modules/bottomNavBarDesignScreen.dart';
import 'package:hospital_maraba/app/modules/novo_agendamento/controllers/novo_agendamento_controller.dart';
import 'package:hospital_maraba/app/widgets/genericButton.dart';

class NovoAgendamentoView extends GetResponsiveView<NovoAgendamentoController> {
  @override
  Widget build(BuildContext context) {
    return BottomNavBarDesignScreen(
        bottomNavBar: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          // height: 70,
          color: backGround,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GenericButton(
                text: Text(
                  "Iniciar agendamento",
                  style: Get.theme.textTheme.headline6
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                icon: Icon(Icons.arrow_forward_ios_rounded,
                    color: Get.theme.canvasColor),
                color: Get.theme.colorScheme.primary,
                onPressed: () => {Get.to(() => ConsultationTypeView())},
              )
            ],
          ),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Agendar uma nova consulta",
                      style: Get.theme.textTheme.displaySmall?.copyWith(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text:
                            "Essas são as etapas para agendar uma consulta, toque em",
                        style: Get.theme.textTheme.headline5
                            ?.copyWith(color: Colors.black54),
                      ),
                      TextSpan(
                        text: " Iniciar Agendamento ",
                        style: Get.theme.textTheme.headline5?.copyWith(
                            color: Colors.black54, fontWeight: FontWeight.w700),
                      ),
                      TextSpan(
                        text: "para começar",
                        style: Get.theme.textTheme.headline5
                            ?.copyWith(color: Colors.black54),
                      )
                    ]))
                  ]),
              SizedBox(height: 8),
              CardHome(
                  icon: Icon(Icons.local_hospital_outlined,
                      size: mediumIconSize, color: iconGray),
                  onTap: () {
                    // Get.to(() => NovoAgendamentoView());
                  },
                  text: "Tipo de consulta",
                  description: "Escolha o tipo de consulta"),
              CardHome(
                  icon: Icon(Icons.calendar_today_sharp,
                      size: mediumIconSize, color: iconGray),
                  onTap: () {},
                  text: "Data da consulta",
                  description: "Escolha uma data disponível para a consulta"),
              CardHome(
                  icon: Icon(Icons.add_location,
                      size: mediumIconSize, color: iconGray),
                  onTap: () {},
                  text: "Local da consulta",
                  description: "Selecione o local"),
              CardHome(
                  icon: Icon(Icons.medical_services_outlined,
                      size: mediumIconSize, color: iconGray),
                  onTap: () {},
                  text: "Seleciona o especialista ",
                  description: "Selecione um especialista"),
            ]),
        sliverAppBar: TitleSliverAppBar(title: "Agendamento de consultas"));
  }
}
