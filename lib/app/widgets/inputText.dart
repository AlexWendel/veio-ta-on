import 'package:hospital_maraba/app/utils/common.sizes.dart';

import '../utils/colorTheme.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class InputText extends GetWidget {
  final String hintText;
  final Icon icon;
  final bool obfuscatedField;

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
        cursorColor: verdeBosta,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: verdeBosta)),
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
