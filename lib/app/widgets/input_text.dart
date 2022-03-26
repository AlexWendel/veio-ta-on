import 'package:hospital_maraba/app/utils/common.sizes.dart';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

class InputText extends GetView {
  List<String> texts = <String>[];
  final itemHeight = <RxDouble>[];
  final Function? onChanged;
  final String hintText;
  final Icon icon;
  final bool obfuscatedField;
  final Rx<TextEditingController> textFieldController =
      TextEditingController().obs;

  InputText(
      {this.onChanged,
      required this.icon,
      required this.hintText,
      this.obfuscatedField = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: TextField(
        onChanged: (value) {
          for (int i = 0; i < texts.length; i++) {
            if (texts[i].toLowerCase().contains(value.toLowerCase()) ||
                value == "") {
              itemHeight[i].value = 100;
            } else {
              itemHeight[i].value = 0;
            }
          }
        },
        style: TextStyle(color: Colors.black87),
        onEditingComplete: () =>
            {}, // TODO: Verificar se o valor é igual em InputText que estiverem ligados
        controller: textFieldController.value,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Get.theme.primaryColor)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          hintStyle:
              TextStyle(fontSize: defaultFontSize / context.textScaleFactor),
          prefixIcon: Icon(
            icon.icon,
            size: 27,
          ),
        ),
      ),
    );
  }
}
