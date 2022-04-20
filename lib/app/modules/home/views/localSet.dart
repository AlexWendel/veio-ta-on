import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/modules/home/widgets/appBarWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/cardLocal.dart';
import 'package:hospital_maraba/app/modules/home/widgets/cardPaciente.dart';
import 'package:hospital_maraba/app/modules/home/widgets/headerWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/seachWidget.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/modules/MainDesign.dart';
import 'package:hospital_maraba/app/widgets/CardHome.dart';

import '../../agendamentos/views/agendamentos_view.dart';

class LocalSet extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Selecione um local para prosseguir",
              style: TextStyle(
                fontSize: defaultFontSize,
                color:
                    // Color(0xff545454
                    Get.theme.highlightColor,
              ),
            ),
            Divider(
              height: 10,
              thickness: 0.1,
              color: Get.theme.secondaryHeaderColor,
            ),
            SizedBox(height: 15),
            SeachWidget(text: "Digite um local para pesquisar"),
            SizedBox(height: 20),
            InkWell(
              child: Text(
                "Próximos atendimentos",
                style: TextStyle(
                  fontSize: defaultFontSize,
                  color:
                      // Color(0xff545454
                      Get.theme.primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 2,
              child: ListView(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardLocal(
                        img: 'assets/images/hospital.png',
                        text: "Hospital Regional De Marabá"),
                    CardLocal(
                        img: 'assets/images/hospital.png',
                        text: "Hospital Regional De Marabá"),
                    CardLocal(
                        img: 'assets/images/hospital.png',
                        text: "Hospital Materno Infantil De Marabá - HMI"),
                    CardLocal(
                        img: 'assets/images/hospital.png',
                        text: "Hospital de Guarnição de Marabá"),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardLocal(
                        img: 'assets/images/hospital.png',
                        text: "Hospital municipal de Marabá"),
                    CardLocal(
                        img: 'assets/images/hospital.png',
                        text: "Hospital Regional De Marabá"),
                    CardLocal(
                        img: 'assets/images/hospital.png',
                        text: "Hospital Materno Infantil De Marabá - HMI"),
                    CardLocal(
                        img: 'assets/images/hospital.png',
                        text: "Hospital de Guarnição de Marabá"),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardLocal(
                        img: 'assets/images/hospital.png',
                        text: "Hospital municipal de Marabá"),
                    CardLocal(
                        img: 'assets/images/hospital.png',
                        text: "Hospital Regional De Marabá"),
                    CardLocal(
                        img: 'assets/images/hospital.png',
                        text: "Hospital Materno Infantil De Marabá - HMI"),
                    CardLocal(
                        img: 'assets/images/hospital.png',
                        text: "Hospital de Guarnição de Marabá"),
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
