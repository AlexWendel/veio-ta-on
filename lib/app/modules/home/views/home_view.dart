import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/data/database.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/models/user.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/home/widgets/appBarWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/cardPaciente.dart';
import 'package:hospital_maraba/app/modules/home/widgets/headerWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/seachWidget.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/modules/MainDesign.dart';
import 'package:hospital_maraba/app/widgets/CardHome.dart';

import '../../agendamentos/views/agendamentos_view.dart';

class HomeView extends GetView<HomeController> {
  final String localID;

  HomeView({required this.localID});

  @override
  Widget build(BuildContext context) {
    final agendamentos =
        Get.find<DatabaseService>().getAllAgendamentosFromLocal(localID);

    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(),
      ),
      body: Container(
        color: Get.theme.primaryColor,
        padding: EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: ListView(children: [
                Text(
                  "Atendimento postinho Hiroshi Matsuda",
                  style: TextStyle(
                    fontSize: titleFontSize,
                    color: Get.theme.canvasColor,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Paciente:",
                          style: TextStyle(
                              fontSize: defaultFontSize,
                              color: Get.theme.primaryColorDark,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 500,
                          child: Text(
                            "João rocha Almeida",
                            style: TextStyle(
                              fontSize: mediumIconSize,
                              color: Get.theme.canvasColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    VerticalDivider(
                      width: 70,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Local:",
                          style: TextStyle(
                              fontSize: defaultFontSize,
                              color: Get.theme.primaryColorDark,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 500,
                          child: Text(
                            "Infectologista - sala 02",
                            style: TextStyle(
                              fontSize: mediumIconSize,
                              color: Get.theme.canvasColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      width: 70,
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hora:",
                          style: TextStyle(
                              fontSize: defaultFontSize,
                              color: Get.theme.primaryColorDark,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "17:00",
                          style: TextStyle(
                            fontSize: mediumIconSize,
                            color: Get.theme.canvasColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  color: Get.theme.primaryColorDark,
                  height: 1,
                  width: 300,
                  margin: EdgeInsets.symmetric(horizontal: 200),
                ),
                SizedBox(height: 30),
                Text(
                  "Atendimento postinho Hiroshi Matsuda",
                  style: TextStyle(
                    fontSize: titleFontSize,
                    color: Get.theme.canvasColor,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          "Alex Wndell",
                          style: TextStyle(
                              fontSize: defaultFontSize,
                              color: Get.theme.canvasColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 500,
                          child: Text(
                            "16:30",
                            style: TextStyle(
                              fontSize: mediumIconSize,
                              color: Get.theme.canvasColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    VerticalDivider(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          "Fabricio Neves",
                          style: TextStyle(
                              fontSize: defaultFontSize,
                              color: Get.theme.canvasColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 500,
                          child: Text(
                            "15:30",
                            style: TextStyle(
                              fontSize: mediumIconSize,
                              color: Get.theme.canvasColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    VerticalDivider(
                      width: 10,
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          "João Marcos de Solza",
                          style: TextStyle(
                              fontSize: defaultFontSize,
                              color: Get.theme.canvasColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "14:20",
                          style: TextStyle(
                            fontSize: mediumIconSize,
                            color: Get.theme.canvasColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
