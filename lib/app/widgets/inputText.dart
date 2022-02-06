import 'package:hospital_maraba/app/utils/common.sizes.dart';

import '../utils/colorTheme.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class InputText extends GetView {
  final String hintText;
  final Icon icon;
  final bool obfuscatedField;
  final Rx<TextEditingController> textFieldController =
      TextEditingController().obs;

  InputText(
      {required this.icon,
      required this.hintText,
      this.obfuscatedField = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      child: TextField(
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
