import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/especialidade.dart';
import 'package:hospital_maraba/app/modules/agendamentos/controllers/agendamentos_controller.dart';
import 'package:hospital_maraba/app/modules/agendamentos/views/localView.dart';
import 'package:hospital_maraba/app/modules/scheduleDesign.dart';
import 'package:hospital_maraba/app/widgets/input_text.dart';
import 'package:hospital_maraba/app/widgets/radio_box.dart';

class AgendamentosView extends GetView<AgendamentosController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AgendamentosController());

    List<Widget> itemList = [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(children: [
            Text(
              "Selecione o tipo de agendamento:",
              style: TextStyle(
                  color: Get.theme.hintColor.withOpacity(0.6),
                  fontWeight: FontWeight.bold,
                  fontSize: Get.textTheme.headlineMedium?.fontSize),
            )
          ])),
      FutureBuilder<List<Especialidade>>(
          future: controller.getAllEspecialidades(),
          builder: ((context, AsyncSnapshot<List<Especialidade>> snapshot) {
            // Caso esteja carregando, mostrar o widget de carregamento
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              if (snapshot.data!.isEmpty) {
                return Center(
                    child: Text("Não há especialidades cadastradas.",
                        style: Get.textTheme.headlineSmall!.copyWith(
                            color: Get.theme.focusColor.withOpacity(0.8))));
              }

              var especialidades = snapshot.data!
                  .map((e) => RadioItem(
                      id: e.id, title: e.nome, description: e.descricao))
                  .toList();

              controller.selectedEspecialidade = RadioBox(
                  icon: Icon(Icons.local_activity), items: especialidades);
              return controller.selectedEspecialidade as Widget;
            }
            return Text("Sem dados");
          })),
    ];
    return ScheduleDesign(
      onPressed: () {
        if (controller.selectedEspecialidade?.selectedItem == null) {
          Get.defaultDialog(
              title: "Erro na etapa",
              backgroundColor: Get.theme.primaryColor,
              middleText: "Você precisa selecionar uma especialidade!");
        } else {
          Get.to(() => LocalView());
        }
      },
      actionText: "Prosseguir",
      body: itemList,
      appBarContent: CustomInputText(
        height: 50,
        hintText: "Pesquisar Exame",
        icon: Icon(Icons.search),
      ),
    );
  }
}
