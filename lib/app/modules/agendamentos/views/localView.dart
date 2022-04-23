import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/local.dart';
import 'package:hospital_maraba/app/modules/scheduleDesign.dart';
import 'package:hospital_maraba/app/widgets/radio_box.dart';

import '../../../widgets/input_text.dart';
import '../controllers/agendamentos_controller.dart';
import 'dataView.dart';

class LocalView extends GetView<AgendamentosController> {
  @override
  final controller = Get.put(AgendamentosController());

  @override
  Widget build(BuildContext context) {
    List<Widget> itemList = [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          "Selecione o local:",
          style: TextStyle(
              color: Get.theme.hintColor.withOpacity(0.6),
              fontWeight: FontWeight.bold,
              fontSize: Get.textTheme.headlineMedium?.fontSize),
        ),
      ),
      FutureBuilder<List<Local>>(
          future: controller.getAllLocaisWithSelectedEspecialidade(),
          builder: ((context, AsyncSnapshot<List<Local>> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());

              case ConnectionState.done:
                if (snapshot.data!.isEmpty) {
                  return Center(
                      child: Text("Não há locais com essa especialidade",
                          style: Get.textTheme.headlineSmall!.copyWith(
                              color: Get.theme.focusColor.withOpacity(0.8))));
                }

                List<RadioItem> locaisList = snapshot.data!
                    .map((e) => RadioItem(
                        id: e.id,
                        title: e.nome,
                        description: e.endereco + ", " + e.bairro))
                    .toList();

                controller.selectedLocal = RadioBox(
                    icon: Icon(Icons.local_activity), items: locaisList);
                return controller.selectedLocal as Widget;

              default:
                break;
            }

            return Text("Sem dados");
          })),
    ];

    return ScheduleDesign(
      onPressed: () {
        if (controller.selectedLocal?.selectedItem == null) {
          Get.defaultDialog(
              title: "Erro na etapa",
              backgroundColor: Get.theme.primaryColor,
              middleText: "Você precisa selecionar um local!");
        } else {
          Get.to(() => DataView());
        }
      },
      actionText: "Prosseguir",
      body: itemList,
      appBarContent: CustomInputText(
        height: 50,
        hintText: "Pesquisar Local",
        icon: Icon(Icons.search),
      ),
    );
  }
}
