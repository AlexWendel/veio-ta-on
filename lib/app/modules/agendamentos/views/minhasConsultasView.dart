import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/data/database.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/MainDesign.dart';
import 'package:hospital_maraba/app/widgets/home_card.dart';

class MinhasConsultasView extends GetView {
  // TODO: Implementar o controller de minhas consultas e levar a parte lógica
  // para lá

  final DatabaseService databaseService = Get.find<DatabaseService>();

  @override
  Widget build(BuildContext context) {
    return MainDesign(
        sliverAppBar: SliverAppBar(
            toolbarHeight: 100 * context.textScaleFactor,
            expandedHeight: 125 * context.textScaleFactor,
            floating: true,
            snap: true,
            elevation: 0,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  color: Get.theme.primaryColor,
                  border: Border.all(color: Colors.transparent)),
            ),
            title: Text("Minhas consultas"),
            shadowColor: Colors.transparent),
        body: [
          Column(children: [
            FutureBuilder<List<Agendamento>>(
                future: databaseService.getAllAgendamentosFromPaciente(
                    FirebaseAuth.instance.currentUser!.uid),
                builder: ((context, AsyncSnapshot<List<Agendamento>> snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.waiting:
                      return Center(child: CircularProgressIndicator());

                    case ConnectionState.done:
                      if (snapshot.hasData) {
                        if (snapshot.data!.isEmpty) {
                          return Column(children: [
                            Center(
                                child: Text("Não há consultas agendadas.",
                                    style: Get.textTheme.headlineSmall!
                                        .copyWith(
                                            color: Get.theme.focusColor
                                                .withOpacity(0.8))))
                          ]);
                        }

                        var listaDeAgendamentos = snapshot.data!
                            .map((e) => CardHome(
                                text: e.especialidade.toString(),
                                description: "Local: ${e.local.toString()}",
                                icon: Icon(Icons.medical_services),
                                onTap: () {}))
                            .toList();
                        return Column(children: listaDeAgendamentos);
                      }
                      break;

                    default:
                      break;
                  }
                  return Text("Sem dados");
                }))
          ])
        ]);
  }
}
