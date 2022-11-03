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

  Rx<TimeOfDay> selectedHour = Rx<TimeOfDay>(TimeOfDay.now());

  Future<void> _selectHour(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
        context: context,
        initialTime: selectedHour.value,
        builder: (context, child) {
          return MediaQuery(
              data:
                  MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
              child: child!);
        });
    if (picked != null && picked != selectedHour.value) {
      selectedHour.value = picked;
      controller.currentTime.value = picked;
    }
  }

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
      Obx(() => Container(
            width: 100,
            alignment: Alignment.center,
            child: Text("${selectedHour.value.format(context)}",
                style: Get.theme.textTheme.headline5?.copyWith(
                    color: Get.theme.primaryColor,
                    fontWeight: FontWeight.w600)),
          )),
      SizedBox(
        height: 20.0,
      ),
      ElevatedButton(
          onPressed: () => {_selectHour(context)},
          child: Text('Selecionar horario'))
    ];
    return ScheduleDesign(
      onPressed: () {
        controller.createAgendamento(context).then((value) => Get.defaultDialog(
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
