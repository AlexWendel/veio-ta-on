import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/home/widgets/cardPaciente.dart';
import 'package:intl/intl.dart';

import '../../../utils/common.sizes.dart';
import '../widgets/appBarWidget.dart';

class AgendamentoView extends GetView<HomeController> {
  final Agendamento agendamento;
  final DateFormat datetimeFormatter = DateFormat('dd/MM/yyyy HH:mm');
  AgendamentoView({required this.agendamento});

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
              "Descrição de Agendamento",
              style: TextStyle(
                fontSize: defaultFontSize,
                color: Get.theme.primaryColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Paciente:',
              style: TextStyle(
                fontSize: defaultCardDescriptionSize,
                color: Get.theme.primaryColor,
              ),
            ),
            FirstAndLastNameUser(
                userPath: agendamento.paciente.path, style: "Subtitle"),
            SizedBox(
              height: 20,
            ),
            Text(
              'Agendado em:',
              style: TextStyle(
                fontSize: defaultCardDescriptionSize,
                color: Get.theme.primaryColor,
              ),
            ),
            Text(
              datetimeFormatter.format(agendamento.agendadoEm),
              style: TextStyle(
                fontSize: sectionSubheaderFontSize,
                color: Get.theme.secondaryHeaderColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Agendado para:',
              style: TextStyle(
                fontSize: defaultCardDescriptionSize,
                color: Get.theme.primaryColor,
              ),
            ),
            Text(
              datetimeFormatter.format(agendamento.agendadoPara),
              style: TextStyle(
                fontSize: sectionSubheaderFontSize,
                color: Get.theme.secondaryHeaderColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Agendado por:',
              style: TextStyle(
                fontSize: defaultCardDescriptionSize,
                color: Get.theme.primaryColor,
              ),
            ),
            FirstAndLastNameUser(
                userPath: agendamento.agendadoPor.path, style: "Subtitle"),
            SizedBox(
              height: 20,
            ),
            Text(
              'Especialidade:',
              style: TextStyle(
                fontSize: defaultCardDescriptionSize,
                color: Get.theme.primaryColor,
              ),
            ),
            TextEspecialidade(
                especialidadePath:
                    agendamento.especialidade.path.split('/')[1]),
            SizedBox(
              height: 20,
            ),
            Text(
              'Fez checkin:',
              style: TextStyle(
                fontSize: defaultCardDescriptionSize,
                color: Get.theme.primaryColor,
              ),
            ),
            Text(
              agendamento.fezCheckin.toString(),
              style: TextStyle(
                fontSize: sectionSubheaderFontSize,
                color: Get.theme.secondaryHeaderColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Foi remarcado:',
              style: TextStyle(
                fontSize: defaultCardDescriptionSize,
                color: Get.theme.primaryColor,
              ),
            ),
            Text(
              agendamento.foiRemarcado.toString(),
              style: TextStyle(
                fontSize: sectionSubheaderFontSize,
                color: Get.theme.secondaryHeaderColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Confirmado:',
              style: TextStyle(
                fontSize: defaultCardDescriptionSize,
                color: Get.theme.primaryColor,
              ),
            ),
            Text(
              agendamento.confirmado.toString(),
              style: TextStyle(
                fontSize: sectionSubheaderFontSize,
                color: Get.theme.secondaryHeaderColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
