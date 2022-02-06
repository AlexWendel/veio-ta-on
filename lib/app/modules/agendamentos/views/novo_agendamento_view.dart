import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/button.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

import '../../novo_agendamento/controllers/novo_agendamento_controller.dart';

class NovoAgendamentoView extends GetResponsiveView<NovoAgendamentoController> {
  @override
  Widget build(BuildContext context) {
    // List<Widget> itemL = [
    //   Container(
    //     height: Get.height,
    //     margin: EdgeInsets.only(top: 40),
    //     child: Padding(
    //       padding: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
    //       child: Column(children: [
    //         Padding(
    //           padding: const EdgeInsets.all(5),
    //           child: Text(
    //             "Essas são as informações relevantes para sua consulta, clique em Iniciar agendamento para começar",
    //             style:
    //                 TextStyle(fontSize: sectionHeaderFontSize, color: iconGray),
    //           ),
    //         ),
    //         CardHome(
    //             icon: Icon(Icons.local_hospital_outlined,
    //                 size: mediumIconSize, color: iconGray),
    //             onTap: () {
    //               Get.to(() => NovoAgendamentoView());
    //             },
    //             text: "Tipo de consulta",
    //             description: "Escolha o tipo de consulta que deseja agendar"),
    //         CardHome(
    //             icon: Icon(Icons.calendar_today_sharp,
    //                 size: mediumIconSize, color: iconGray),
    //             onTap: () {},
    //             text: "Data da consulta",
    //             description: "Escolha uma data disponível para a consulta"),
    //         CardHome(
    //             icon: Icon(Icons.add_location,
    //                 size: mediumIconSize, color: iconGray),
    //             onTap: () {},
    //             text: "Local da consulta",
    //             description: "Selecione a unidade de atendimento"),
    //         CardHome(
    //             icon: Icon(Icons.medical_services_outlined,
    //                 size: mediumIconSize, color: iconGray),
    //             onTap: () {},
    //             text: "Seleciona o especialista ",
    //             description: "Selecione um especialista"),
    //       ]),
    //     ),
    //     width: 1000,
    //     decoration: BoxDecoration(
    //       color: backGround,
    //       borderRadius: BorderRadius.only(
    //         topLeft: Radius.circular(25),
    //         topRight: Radius.circular(25),
    //       ),
    //     ),
    //   ),
    // ];

    return Scaffold(
      backgroundColor: verdeBosta,
      body: ModalScreen(
        body: [
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Text(
              "Essas são as informações relevantes para sua consulta, clique em Iniciar agendamento para começar",
              style: TextStyle(
                  fontSize: defaultFontSize / Get.textScaleFactor,
                  color: Colors.black54),
            ),
          ),
          CardHome(
              icon: Icon(Icons.local_hospital_outlined,
                  size: mediumIconSize, color: iconGray),
              onTap: () {
                // Get.to(() => NovoAgendamentoView());
              },
              text: "Tipo de consulta",
              description: "Escolha o tipo de consulta que deseja agendar"),
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
              description: "Selecione a unidade de atendimento"),
          CardHome(
              icon: Icon(Icons.medical_services_outlined,
                  size: mediumIconSize, color: iconGray),
              onTap: () {},
              text: "Seleciona o especialista ",
              description: "Selecione um especialista"),
        ],
        title: "Agendamento de consultas",
      ),
      bottomNavigationBar: Container(
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
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "Iniciar gerenciamento",
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
      // backgroundColor: verdeBosta,
      // body: CustomScrollView(
      //   slivers: [
      //     SliverAppBar(
      //       backgroundColor: verdeBosta,
      //       toolbarHeight: 80 * context.textScaleFactor,
      //       elevation: 0,
      //       centerTitle: false,
      //       leading: IconButton(
      //         onPressed: () {
      //           Get.back();
      //         },
      //         icon: Icon(
      //           Icons.arrow_back_ios_outlined,
      //           color: Colors.black54,
      //           size: 32,
      //         ),
      //       ),
      //       title: Text("Agendamento de consultas",
      //           style: TextStyle(
      //               fontSize: 23,
      //               fontWeight: FontWeight.w600,
      //               color: Colors.black54)),
      //       floating: true,
      //       expandedHeight: 100,
      //       flexibleSpace: Container(
      //         decoration: BoxDecoration(
      //             color: verdeBosta,
      //             border: Border(
      //                 bottom: BorderSide(color: iconGray, width: 0.4))),
      //       ),
      //       //aqui....................
      //     ),
      //     SliverList(
      //         delegate: SliverChildBuilderDelegate(
      //             (context, index) => itemL[index],
      //             childCount: itemL.length))
      //   ],
      // ),
    );
  }
}
