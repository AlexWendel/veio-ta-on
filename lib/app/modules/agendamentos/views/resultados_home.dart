import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/DefaultDesignScreen.dart';
import 'package:hospital_maraba/app/modules/agendamentos/minhas_consultas/views/consulta_agendada.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/resultado_final.dart';
import 'package:hospital_maraba/app/modules/settings/widgets/cardConsultas.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/TitleSliverAppBar.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/modalScreen.dart';

class ResultadosHome extends GetView {
  @override
  Widget build(BuildContext context) {
    return DefaultDesignScreen(
      sliverAppBar: TitleSliverAppBar(title: "Resultados dos exames"),
      body: Column(children: [
        Text(
          "Clique em alguma exame para vizualizar o resutado ",
          style:
              Get.theme.textTheme.displaySmall?.copyWith(color: Colors.black54),
        ),
        SizedBox(height: 8),
        InkWell(
          splashColor: verdeBosta,
          onTap: () {
            Get.to(() => ResultadoFinal());
          },
          child: Container(
            alignment: Alignment.centerLeft,
            // height: 150,
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: textFieldGray,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Neurologista",
                  style: TextStyle(
                      color: Color.fromRGBO(120, 120, 120, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: defaultFontSize / context.textScaleFactor),
                ),
                Container(
                  // width: 260,
                  padding: EdgeInsets.only(
                    top: 8,
                  ),
                  child: Text(
                    "Hospital Municipal - Folha 17, Quadra Especial - Nova Marabá - PA",
                    style: TextStyle(
                        color: Color.fromRGBO(160, 160, 160, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: defaultCardDescriptionSize /
                            context.textScaleFactor),
                  ),
                ),
                Container(
                  // width: 260,
                  padding: EdgeInsets.only(
                    top: 8,
                  ),
                  child: Text(
                    "13/05/22 as 14:30h",
                    style: TextStyle(
                        color: Color.fromRGBO(160, 160, 160, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: defaultCardDescriptionSize /
                            context.textScaleFactor),
                  ),
                ),
                Container(
                  // width: 260,
                  padding: EdgeInsets.only(
                    top: 8,
                  ),
                  child: Text(
                    "Dr. Wanderley Andrade",
                    style: TextStyle(
                        color: Color.fromRGBO(160, 160, 160, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: defaultCardDescriptionSize /
                            context.textScaleFactor),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
