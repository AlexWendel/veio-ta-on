import '../utils/colorTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class InputText extends GetResponsiveWidget {
  String hintText = "";
  Icon icon = Icon(Icons.lock);
  InputText({Icon icon = const Icon(Icons.lock), String hintText = ""}) {
    this.icon = icon;
    this.hintText = hintText;
  }

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
