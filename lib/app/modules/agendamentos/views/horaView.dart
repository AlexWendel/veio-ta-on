import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/datas_disponiveis.dart';

import 'package:hospital_maraba/app/models/day.dart';
import 'package:hospital_maraba/app/models/month.dart';
import 'package:hospital_maraba/app/modules/agendamentos/controllers/agendamentos_controller.dart';
import 'package:hospital_maraba/app/modules/agendamentos/widgets/data_select.dart';
import 'package:hospital_maraba/app/modules/agendamentos/widgets/set_month.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/modules/scheduleDesign.dart';
import 'package:hospital_maraba/app/utils/color_theme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/datepicker.dart';
import 'package:hospital_maraba/app/widgets/input_text.dart';
import 'package:hospital_maraba/app/widgets/radio_box.dart';
import 'package:hospital_maraba/app/widgets/radio_button.dart';

class HoraView extends GetView<AgendamentosController> {
  @override
  final controller = Get.find<AgendamentosController>();

  @override
  Widget build(BuildContext context) {
    // List<RadioItem> cards =
    List<Widget> itemList = [
      // FutureBuilder<DocumentSnapshot>(
      //     builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
      //       return Text("Time picker",
      //           style: Get.textTheme.bodyLarge
      //               ?.copyWith(color: Get.theme.focusColor.withOpacity(0.7)));
      //     },
      //     future: FirebaseFirestore.instance
      //         .collection("horarios")
      //         //TODO : PEGAR DATA PRA UBS ESPECÍFICA
      //         // .doc("mcHnTMVfUWADyf3vOOF5")
      //         // .collection("dispniveis")
      //         .doc("mcHnTMVfUWADyf3vOOF5")
      //         .get()),

      // Text(
      //   "Clique em um dia para prosseguir",
      //   style: TextStyle(fontSize: titleFontSize, color: cardGray),
      // ),
      // SizedBox(
      //   height: 5,
      // ),
      FutureBuilder(
          future: controller.getDatesByDay(controller.currentDate.value!),
          builder: ((context, AsyncSnapshot<List<DataDisponivel>> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              case ConnectionState.done:
                if (snapshot.data!.isEmpty) {
                  return Center(
                    child: Text(
                      "Sem itens",
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }
                List<RadioItem> horas = snapshot.data!
                    .map((e) => RadioItem(
                        id: e.id ?? "",
                        title:
                            "${e.agendadoPara.hour}:${e.agendadoPara.minute}",
                        description:
                            "${e.agendadoPara.day}/${e.agendadoPara.month}/${e.agendadoPara.year}"))
                    .toList();
                controller.selectedHourBox = RadioBox(
                    icon: Icon(Icons.watch_later_outlined), items: horas);

                return controller.selectedHourBox as Widget;
            }

            return Text('Sem dados');
          }))
    ];
    return ScheduleDesign(
      onPressed: () {
        controller.createAgendamento().then((value) => Get.defaultDialog(
              titleStyle: TextStyle(color: Colors.black54),
              middleTextStyle: TextStyle(color: Colors.black54),
              barrierDismissible: false,
              buttonColor: Get.theme.backgroundColor,
              onConfirm: () {
                Get.delete<AgendamentosController>();
                Get.offAll(() => HomeView());
              },
              backgroundColor: backGround,
              title: "Concluído",
              middleText: "Agendamento realizado com sucesso",
              confirmTextColor: Colors.black54,
            ));
      },
      actionText: "Finalizar o Agendamento",
      body: itemList,
      appBarContent: CustomInputText(
        height: 50,
        hintText: "Pesquisar Data",
        icon: Icon(Icons.search),
      ),
    );
  }
}
