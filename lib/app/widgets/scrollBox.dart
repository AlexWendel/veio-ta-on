import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/modules/agendamentos/controllers/agendamentos_controller.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/widgets/cardAgendamentos.dart';
import 'package:hospital_maraba/app/widgets/cardHome.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';

class ScrollBox extends GetView {
  List<CardAgendamentos> itemList = [];
  Rx<InputText> itemSearchInput;

  ScrollBox(
      {required this.itemSearchInput,
      List<CardAgendamentos> itemList = const []}) {
    this.itemList = itemList;
    List<Rx<Color>> t = <Rx<Color>>[];
    for (int i = 0; i < itemList.length; i++) {
      t.add(itemList[i].color);
      itemList[i].index = i;
      itemSearchInput.value.itemHeight.add(itemList[i].height);
      itemSearchInput.value.texts.add(itemList[i].text);
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
        color: grayBackground.withOpacity(0.3),
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
