import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/widgets/radioButton.dart';

class RadioBox extends GetView {
  List locais = ["1", "2", "3"];
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
            colorList[i] = Colors.green;
            for (int j = 0; j < selectionList.length; j++) {
              if (j != i) {
                selectionList[j] = false;
                colorList[j] = Get.theme.highlightColor;
              }
            }
          },
          text: "teste",
          description: "testando",
          icon: Icon(Icons.abc),
          height: 100,
          width: context.width)));
    }

    return Container(
      height: 600,
      width: 200,
      color: Colors.green,
      child: ListView.builder(
        itemBuilder: (BuildContext context, index) {
          return radioList[index];
        },
        itemCount: radioList.length,
      ),
    );
  }
}
