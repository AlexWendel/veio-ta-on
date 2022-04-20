import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/home/views/cadastro_vew.dart';
import 'package:hospital_maraba/app/modules/home/views/examesView.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/modules/home/widgets/cardPaciente.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/modules/MainDesign.dart';
import 'package:hospital_maraba/app/widgets/CardHome.dart';

import '../../agendamentos/views/agendamentos_view.dart';

class HeaderWidget extends GetResponsiveWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {
            Get.to(() => HomeView());
          },
          child: Text(
            "Home",
            style: TextStyle(
              fontSize: defaultFontSize,
              color:
                  // Color(0xff545454
                  Get.theme.highlightColor,
            ),
          ),
        ),
        VerticalDivider(
          indent: 5,
          endIndent: 5,
          width: 50,
          thickness: 5,
          color: Get.theme.secondaryHeaderColor,
        ),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: Text(
            "Realizar Consulta",
            style: TextStyle(
              fontSize: defaultFontSize,
              color:
                  // Color(0xff545454
                  Get.theme.highlightColor,
            ),
          ),
        ),
        VerticalDivider(
          indent: 5,
          endIndent: 5,
          width: 50,
          thickness: 5,
          color: Get.theme.secondaryHeaderColor,
        ),
        InkWell(
          onTap: () {
            Get.to(() => ExamesView());
          },
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: Text(
            "Resultados de exames",
            style: TextStyle(
              fontSize: defaultFontSize,
              color:
                  // Color(0xff545454
                  Get.theme.highlightColor,
            ),
          ),
        ),
        VerticalDivider(
          indent: 5,
          endIndent: 5,
          width: 50,
          thickness: 5,
          color: Get.theme.secondaryHeaderColor,
        ),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {
            Get.to(() => CadastroView());
          },
          child: Text(
            "Cadastrar Paciente",
            style: TextStyle(
              fontSize: defaultFontSize,
              color:
                  // Color(0xff545454
                  Get.theme.highlightColor,
            ),
          ),
        ),
        VerticalDivider(
          indent: 5,
          endIndent: 5,
          width: 50,
          thickness: 5,
          color: Get.theme.secondaryHeaderColor,
        ),
        InkWell(
          child: Text(
            "Configurações",
            style: TextStyle(
              fontSize: defaultFontSize,
              color:
                  // Color(0xff545454
                  Get.theme.highlightColor,
            ),
          ),
        ),
      ],
    );
  }
}
