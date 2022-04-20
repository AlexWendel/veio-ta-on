import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/home/widgets/appBarWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/cardPaciente.dart';
import 'package:hospital_maraba/app/modules/home/widgets/headerWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/inputNormal.dart';
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
              height: 10,
              thickness: 0.1,
              color: Get.theme.secondaryHeaderColor,
            ),
            SizedBox(height: 15),
            SeachWidget(
                text:
                    "Digite o nome ou número do cartão de SUS de um paciente"),
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nome",
                          style: TextStyle(
                              fontSize: sectionSubheaderFontSize,
                              color: Get.theme.highlightColor),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          height: 80,
                          width: 600,
                          child: Column(
                            children: [
                              InputNormal(
                                inputText: "Digite o nome completo do paciente",
                                obscure: false,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email (não obrigatório)",
                          style: TextStyle(
                              fontSize: sectionSubheaderFontSize,
                              color: Get.theme.highlightColor),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          height: 80,
                          width: 600,
                          child: Column(
                            children: [
                              InputNormal(
                                inputText: "digite o email do paciente",
                                obscure: false,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CPF",
                          style: TextStyle(
                              fontSize: sectionSubheaderFontSize,
                              color: Get.theme.highlightColor),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          height: 80,
                          width: 280,
                          child: Column(
                            children: [
                              InputNormal(
                                inputText: "Digite o CPF do paciente",
                                obscure: false,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cartão SUS",
                          style: TextStyle(
                              fontSize: sectionSubheaderFontSize,
                              color: Get.theme.highlightColor),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          height: 80,
                          width: 280,
                          child: Column(
                            children: [
                              InputNormal(
                                inputText: "N° de cartão SUS",
                                obscure: false,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Confirmar email",
                          style: TextStyle(
                              fontSize: sectionSubheaderFontSize,
                              color: Get.theme.highlightColor),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          height: 80,
                          width: 600,
                          child: Column(
                            children: [
                              InputNormal(
                                inputText: "confirme o email do paciente",
                                obscure: false,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Senha",
                          style: TextStyle(
                              fontSize: sectionSubheaderFontSize,
                              color: Get.theme.highlightColor),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          height: 60,
                          width: 280,
                          child: Column(
                            children: [
                              InputNormal(
                                inputText: "Digite sua senha",
                                obscure: true,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Confirmar senha",
                          style: TextStyle(
                              fontSize: sectionSubheaderFontSize,
                              color: Get.theme.highlightColor),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          height: 60,
                          width: 280,
                          child: Column(
                            children: [
                              InputNormal(
                                inputText: "Confirme sua senha",
                                obscure: true,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "",
                          style: TextStyle(
                              fontSize: sectionSubheaderFontSize,
                              color: Get.theme.highlightColor),
                        ),
                        Container(
                          height: 60,
                          width: 200,
                          child: ElevatedButton(
                            child: Padding(
                                padding: EdgeInsets.only(top: 3, bottom: 3),
                                child: Text("Cadastrar",
                                    style: Get.theme.textTheme.headline5
                                        ?.copyWith(
                                            color: Get.theme.canvasColor,
                                            fontWeight: FontWeight.w600))),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 360,
                    )
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
