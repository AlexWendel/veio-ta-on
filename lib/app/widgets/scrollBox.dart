import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/widgets/cardAgendamentos.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';

class ScrollBox extends GetView {
  List<CardAgendamentos> itemList = [];

  ScrollBox({List<CardAgendamentos> itemList = const []}) {
    this.itemList = itemList;
    List<Rx<Color>> t = <Rx<Color>>[];
    for (int i = 0; i < itemList.length; i++) {
      t.add(itemList[i].color);
      itemList[i].index = i;
    }
    for (int i = 0; i < itemList.length; i++) {
      itemList[i].relatives.value = t;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: cleareGrayBrackground,
      ),
      width: 1000,
      height: Get.height / 2.3,
      child: ListView.builder(
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            return itemList[index];
          }),
    );
  }
}
