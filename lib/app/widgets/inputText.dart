import '../utils/colorTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class InputText extends GetWidget {
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
        cursorColor: verdeBosta,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: verdeBosta)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 20),
          prefixIcon: Icon(
            icon.icon,
            size: 27,
          ),
        ),
      ),
    );
  }
}
