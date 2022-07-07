import 'package:flutter/material.dart';
import 'package:hospital_maraba/app/models/especialidade.dart';
import 'package:intl/intl.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/models/user.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/data/database.dart';

class CardPaciente extends GetResponsiveWidget {
  final Agendamento agendamento;
  CardPaciente({required this.agendamento});
  final DateFormat datetimeFormatter = DateFormat('dd/MM/yyyy HH:mm');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 150,
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border:
              Border.all(color: Get.theme.secondaryHeaderColor, width: 0.3)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        FirstAndLastNameUser(
            userPath: agendamento.paciente.path, style: "Title"),
        SizedBox(
          height: 50,
        ),
        Text(
          datetimeFormatter.format(agendamento.agendadoPara),
          style: TextStyle(
            fontSize: sectionSubheaderFontSize,
            color: Get.theme.secondaryHeaderColor,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        TextEspecialidade(
            especialidadePath: agendamento.especialidade.path.split('/')[1]),
      ]),
    );
  }
}

class TextEspecialidade extends GetResponsiveWidget {
  final String especialidadePath;
  TextEspecialidade({required this.especialidadePath});

  @override
  Widget build(BuildContext context) {
    final especialidadeReference =
        Get.find<DatabaseService>().getEspecialidadeDetails(especialidadePath);
    return FutureBuilder(
        future: especialidadeReference,
        builder: (BuildContext context, AsyncSnapshot<Especialidade> snapshot) {
          Widget children = Container();
          if (snapshot.hasData) {
            children = Text(
              snapshot.data!.nome,
              style: TextStyle(
                fontSize: sectionSubheaderFontSize,
                color: Get.theme.secondaryHeaderColor,
              ),
            );
          } else if (snapshot.hasError) {
            children = Row(children: [
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('Error: ${snapshot.error}'),
              )
            ]);
          } else {
            children = Row(children: [
              SizedBox(
                width: 60,
                height: 60,
                child: CircularProgressIndicator(
                  color: Get.theme.primaryColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Carregando dados...'),
              )
            ]);
          }
          return children;
        });
  }
}

class FirstAndLastNameUser extends GetResponsiveWidget {
  final String userPath;
  final String style;
  // Style: Title/Subtitle
  FirstAndLastNameUser({required this.userPath, required this.style});

  @override
  Widget build(BuildContext context) {
    final userReference = Get.find<DatabaseService>().userReference(userPath);
    return FutureBuilder(
        future: userReference,
        builder: (BuildContext context, AsyncSnapshot<UserLocal> snapshot) {
          Widget children = Container();
          if (snapshot.hasData) {
            if (style == 'Title') {
              children = Text(
                snapshot.data!.nome + " " + snapshot.data!.sobrenome,
                style: TextStyle(
                  fontSize: defaultCardDescriptionSize,
                  color: Get.theme.primaryColor,
                ),
              );
            } else if (style == 'Subtitle') {
              children = Text(
                snapshot.data!.nome + " " + snapshot.data!.sobrenome,
                style: TextStyle(
                  fontSize: sectionSubheaderFontSize,
                  color: Get.theme.secondaryHeaderColor,
                ),
              );
            }
          } else if (snapshot.hasError) {
            children = Row(children: [
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('Error: ${snapshot.error}'),
              )
            ]);
          } else {
            children = Row(children: [
              SizedBox(
                width: 60,
                height: 60,
                child: CircularProgressIndicator(
                  color: Get.theme.primaryColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('Carregando dados...'),
              )
            ]);
          }
          return children;
        });
  }
}
