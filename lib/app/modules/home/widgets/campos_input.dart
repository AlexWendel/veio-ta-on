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

class Campos_input extends GetResponsiveWidget {
  final String title;
  final String descript;
  final double width;
  final double height;

  Campos_input({
    required this.title,
    required this.width,
    required this.height,
    required this.descript,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: sectionSubheaderFontSize,
              color: Get.theme.highlightColor),
        ),
        Container(
          padding: EdgeInsets.only(top: 5),
          height: height,
          width: width,
          child: Column(
            children: [
              InputNormal(
                inputText: descript,
                obscure: false,
              )
            ],
          ),
        ),
      ],
    );
  }
}
