import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/widgets/radioButton.dart';

class RadioBoxController extends GetxController {}

class RadioBox extends GetView {
  @override
  Widget build(BuildContext context) {
    List<Widget> radioList = [];
    return Container(
      height: 600,
      width: 200,
      color: Colors.green,
      child: ListView.builder(
        itemBuilder: (BuildContext context, index) {
          radioList.add(RadioButton(
            onTap: () => {},
            text: "Teste",
            description: "Testando",
            icon: Icon(Icons.access_alarms),
            height: 100,
            width: context.width,
            id: index,
          ));
          return radioList[index];
        },
        itemCount: 5,
      ),
    );
  }
}
