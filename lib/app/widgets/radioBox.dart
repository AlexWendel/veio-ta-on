import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/agendamentos/controllers/agendamentos_controller.dart';
import 'package:hospital_maraba/app/widgets/radioButton.dart';
import 'input_text.dart';

class RadioBox extends GetView {
  final List items;
  final Icon icon;

  RadioBox({required this.icon, required this.items});

  @override
  Widget build(BuildContext context) {
    AgendamentosController controller = Get.put(AgendamentosController());
    List<Widget> radioList = [];
    RxList<bool> selectionList = RxList<bool>();
    RxList<Color> colorList = RxList<Color>();
    for (int i = 0; i < items.length; i++) {
      selectionList.add(false);
      colorList.add(Get.theme.highlightColor);
      radioList.add(Obx(() => RadioButton(
          color: colorList[i],
          onTap: () {
            selectionList[i] = true;
            colorList[i] = Get.theme.primaryColor.withOpacity(0.7);
            for (int j = 0; j < selectionList.length; j++) {
              if (j != i) {
                selectionList[j] = false;
                colorList[j] = Get.theme.highlightColor;
              }
            }
          },
          text: items[i].title,
          description: items[i].description,
          icon: icon,
          height: 100,
          width: context.width)));
    }

    return SingleChildScrollView(
      child: Column(
        children: radioList,
      ),
    );
  }
}
