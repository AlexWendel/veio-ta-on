// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/home/widgets/campos_input.dart';
import 'package:hospital_maraba/app/modules/home/widgets/appBarWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/headerWidget.dart';
import 'package:hospital_maraba/app/utils/color_theme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class NovaConsulta extends GetView<HomeController> {
  final String localID;

  NovaConsulta({required this.localID});

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
            HeaderWidget(
              localID: localID,
            ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        Text(
                          "Selecione uma data",
                          style: TextStyle(
                              fontSize: sectionSubheaderFontSize,
                              color: Get.theme.highlightColor),
                        ),
                        SizedBox(height: 5),
                        Container(
                          // height: 0,
                          width: 500,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: cardGray)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                  InkWell(onTap: () {}, child: Text("20/06")),
                                ],
                              ),
                            ],
                          ),
                        ),
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
                        ),
                        Text(
                          "",
                          style: TextStyle(
                              fontSize: sectionSubheaderFontSize,
                              color: Get.theme.highlightColor),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Campos_input(
                            title: "Tipo de atendimento",
                            descript: "Digite o email do paciente",
                            height: 80,
                            width: 500),
                        SizedBox(height: 20),
                        Campos_input(
                            title: "Confirmar email (não obrigatório)",
                            descript: "Confirme o email do paciente",
                            height: 80,
                            width: 500),
                        SizedBox(height: 20),
                        Text(
                          "Selecione um horário",
                          style: TextStyle(
                              fontSize: sectionSubheaderFontSize,
                              color: Get.theme.highlightColor),
                        ),
                        SizedBox(height: 5),
                        Container(
                          // height: 0,
                          width: 500,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: cardGray)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(onTap: () {}, child: Text("08:00")),
                                  InkWell(onTap: () {}, child: Text("09:00")),
                                  InkWell(onTap: () {}, child: Text("10:00")),
                                  InkWell(onTap: () {}, child: Text("11:00")),
                                  InkWell(onTap: () {}, child: Text("12:00")),
                                  InkWell(onTap: () {}, child: Text("13:00")),
                                  InkWell(onTap: () {}, child: Text("14:00")),
                                  InkWell(onTap: () {}, child: Text("15:00")),
                                  InkWell(onTap: () {}, child: Text("16:00")),
                                  InkWell(onTap: () {}, child: Text("17:00")),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(onTap: () {}, child: Text("08:00")),
                                  InkWell(onTap: () {}, child: Text("09:00")),
                                  InkWell(onTap: () {}, child: Text("10:00")),
                                  InkWell(onTap: () {}, child: Text("11:00")),
                                  InkWell(onTap: () {}, child: Text("12:00")),
                                  InkWell(onTap: () {}, child: Text("13:00")),
                                  InkWell(onTap: () {}, child: Text("14:00")),
                                  InkWell(onTap: () {}, child: Text("15:00")),
                                  InkWell(onTap: () {}, child: Text("16:00")),
                                  InkWell(onTap: () {}, child: Text("17:00")),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(onTap: () {}, child: Text("08:00")),
                                  InkWell(onTap: () {}, child: Text("09:00")),
                                  InkWell(onTap: () {}, child: Text("10:00")),
                                  InkWell(onTap: () {}, child: Text("11:00")),
                                  InkWell(onTap: () {}, child: Text("12:00")),
                                  InkWell(onTap: () {}, child: Text("13:00")),
                                  InkWell(onTap: () {}, child: Text("14:00")),
                                  InkWell(onTap: () {}, child: Text("15:00")),
                                  InkWell(onTap: () {}, child: Text("16:00")),
                                  InkWell(onTap: () {}, child: Text("17:00")),
                                ],
                              ),
                              SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(onTap: () {}, child: Text("08:00")),
                                  InkWell(onTap: () {}, child: Text("09:00")),
                                  InkWell(onTap: () {}, child: Text("10:00")),
                                  InkWell(onTap: () {}, child: Text("11:00")),
                                  InkWell(onTap: () {}, child: Text("12:00")),
                                  InkWell(onTap: () {}, child: Text("13:00")),
                                  InkWell(onTap: () {}, child: Text("14:00")),
                                  InkWell(onTap: () {}, child: Text("15:00")),
                                  InkWell(onTap: () {}, child: Text("16:00")),
                                  InkWell(onTap: () {}, child: Text("17:00")),
                                ],
                              ),
                            ],
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
