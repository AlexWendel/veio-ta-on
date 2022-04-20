// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/home/widgets/campos_input.dart';
import 'package:hospital_maraba/app/modules/home/widgets/appBarWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/headerWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/seachWidget.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class NovaConsulta extends GetView<HomeController> {
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
              height: 10,
              thickness: 0.1,
              color: Get.theme.secondaryHeaderColor,
            ),
            SizedBox(height: 20),
            Text(
              "Cadastrar nova consulta",
              style: TextStyle(
                  fontSize: defaultFontSize, color: Get.theme.primaryColor),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 2,
              child: ListView(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Campos_input(
                            title: "Nome",
                            descript: "Digite o nome do paciente",
                            height: 80,
                            width: 500),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Campos_input(
                                title: "CPF",
                                descript: "Digite o CPF do paciente",
                                height: 80,
                                width: 200),
                            SizedBox(width: 20),
                            Campos_input(
                                title: "Senha",
                                descript: "Senha do paciente",
                                height: 80,
                                width: 280),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Campos_input(
                                title: "Senha",
                                descript: "Digite uma Senha para paciente",
                                height: 80,
                                width: 230),
                            SizedBox(width: 40),
                            Campos_input(
                                title: "Senha",
                                descript: "Confrime a senha do paciente",
                                height: 80,
                                width: 230),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Campos_input(
                            title: "Tipo de atendimento",
                            descript: "Digite o email do paciente",
                            height: 80,
                            width: 500),
                        SizedBox(height: 20),
                        Campos_input(
                            title: "Número do cartão SUS",
                            descript:
                                "Digite o número de cartão SUS do paciente",
                            height: 80,
                            width: 280),
                        Text(
                          "",
                          style: TextStyle(
                              fontSize: sectionSubheaderFontSize,
                              color: Get.theme.highlightColor),
                        ),
                        Card(
                          elevation: 5,
                          shadowColor: Get.theme.hoverColor,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(15),
                              child: Text(
                                "Cadastrar ",
                                style: TextStyle(
                                    fontSize: defaultFontSize,
                                    color: Get.theme.primaryColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        )
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
