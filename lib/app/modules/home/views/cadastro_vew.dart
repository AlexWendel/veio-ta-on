import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/home/widgets/appBarWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/cardPaciente.dart';
import 'package:hospital_maraba/app/modules/home/widgets/headerWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/seachWidget.dart';
import 'package:hospital_maraba/app/modules/login/widgets/inputWdget.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/modules/MainDesign.dart';
import 'package:hospital_maraba/app/widgets/CardHome.dart';

import '../../agendamentos/views/agendamentos_view.dart';

class CadastroView extends GetView<HomeController> {
  @override
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
            HeaderWidget(),
            Divider(
              height: 8,
              thickness: 0.1,
              color: Get.theme.secondaryHeaderColor,
            ),
            SizedBox(height: 15),
            SeachWidget(),
            SizedBox(height: 20),
            InkWell(
              child: Text(
                "Cadastrar novo paciente",
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
                Text(
                  "Senha",
                  style: TextStyle(
                      fontSize: sectionSubheaderFontSize,
                      color: Get.theme.highlightColor),
                ),
                Row(
                  children: [
                    InputWidget(
                      icone: Icon(null),
                      inputText: "Digite o nome completo do paciente",
                      obscure: false,
                    ),
                    VerticalDivider(
                      width: 20,
                    ),
                    InputWidget(
                      icone: Icon(null),
                      inputText: "Digite o email do paciente",
                      obscure: false,
                    ),
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
