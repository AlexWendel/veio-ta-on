import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/widgets/radioButton.dart';
import 'input_text.dart';

class RadioBox extends GetView {
  List locais = ["1", "2", "3", "4", "5"];
  @override
  Widget build(BuildContext context) {
    List<Widget> radioList = [];
    RxList<bool> selectionList = RxList<bool>();
    RxList<Color> colorList = RxList<Color>();
    for (int i = 0; i < locais.length; i++) {
      selectionList.add(false);
      colorList.add(Get.theme.highlightColor);
      radioList.add(Obx(() => RadioButton(
          color: colorList[i],
          onTap: () {
            selectionList[i] = true;
            colorList[i] = Get.theme.backgroundColor.withAlpha(80);
            for (int j = 0; j < selectionList.length; j++) {
              if (j != i) {
                selectionList[j] = false;
                colorList[j] = Get.theme.highlightColor;
              }
            }
          },
          text: "teste " + locais[i],
          description: "testando",
          icon: Icon(Icons.abc),
          height: 100,
          width: context.width)));
    }

    return Column(
      children: [
        CustomInputText(
          hintText: "Pesquisar Tipo de Exame",
          icon: Icon(Icons.search),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          height: context.height / 2,
          width: Get.width,
          color: Get.theme.canvasColor,
          child: ListView.builder(
            itemBuilder: (BuildContext context, index) {
              return radioList[index];
            },
            itemCount: radioList.length,
          ),
        ),
      ],
    );
  }
}
