import 'package:hospital_maraba/app/utils/common.sizes.dart';

import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

var maskPhone = MaskTextInputFormatter(
    mask: '(##) #####-####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);
var maskSusCard = MaskTextInputFormatter(
    mask: '### #### #### ####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);
var maskCPF = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);
var maskRG = MaskTextInputFormatter(
    mask: '#######',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy);

class CustomInputText extends GetView {
  final List<String> texts = <String>[];
  final itemHeight = <RxDouble>[];
  final Function? onChanged;
  final String hintText;
  final Icon icon;
  final bool obfuscatedField;
  final Rx<TextEditingController> textFieldController =
      TextEditingController().obs;

  CustomInputText(
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
        obscureText: obfuscatedField,
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
        onEditingComplete: () => {},
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

class CPFInputText extends GetView {
  final List<String> texts = <String>[];
  final itemHeight = <RxDouble>[];
  final Function? onChanged;
  final String hintText;
  final Icon icon;
  final bool obfuscatedField;
  final Rx<TextEditingController> textFieldController =
      TextEditingController().obs;

  CPFInputText(
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
        inputFormatters: [maskCPF],
        keyboardType: TextInputType.number,
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
        onEditingComplete: () => {},
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

class RGInputText extends GetView {
  final List<String> texts = <String>[];
  final itemHeight = <RxDouble>[];
  final Function? onChanged;
  final String hintText;
  final Icon icon;
  final bool obfuscatedField;
  final Rx<TextEditingController> textFieldController =
      TextEditingController().obs;

  RGInputText(
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
        inputFormatters: [maskRG],
        keyboardType: TextInputType.number,
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
        onEditingComplete: () => {},
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

class SusCardInputText extends GetView {
  final List<String> texts = <String>[];
  final itemHeight = <RxDouble>[];
  final Function? onChanged;
  final String hintText;
  final Icon icon;
  final bool obfuscatedField;
  final Rx<TextEditingController> textFieldController =
      TextEditingController().obs;

  SusCardInputText(
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
        inputFormatters: [maskSusCard],
        keyboardType: TextInputType.number,
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
        onEditingComplete: () => {},
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

class PhoneInputText extends GetView {
  final List<String> texts = <String>[];
  final itemHeight = <RxDouble>[];
  final Function? onChanged;
  final String hintText;
  final Icon icon;
  final bool obfuscatedField;
  final Rx<TextEditingController> textFieldController =
      TextEditingController().obs;

  PhoneInputText(
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
        inputFormatters: [maskPhone],
        keyboardType: TextInputType.number,
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
        onEditingComplete: () => {},
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
