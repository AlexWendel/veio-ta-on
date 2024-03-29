import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/widgets/radio_button.dart';

class RadioItem {
  final String id;
  final String title;
  final String description;

  RadioItem({required this.id, required this.title, required this.description});
}

class RadioBox extends GetView {
  final List<RadioItem> items;
  final Icon icon;
  RadioItem? selectedItem;

  RadioBox({required this.icon, required this.items});

  @override
  Widget build(BuildContext context) {
    List<Widget> radioList = [];
    RxList<bool> selectionList = RxList<bool>();
    RxList<Color> colorList = RxList<Color>();
    for (int i = 0; i < items.length; i++) {
      selectionList.add(false);
      colorList.add(Get.theme.highlightColor);
      radioList.add(Obx(() => RadioButton(
          id: items[i].id.toString(),
          color: colorList[i],
          onTap: () {
            selectionList[i] = true;
            selectedItem = items[i];
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
