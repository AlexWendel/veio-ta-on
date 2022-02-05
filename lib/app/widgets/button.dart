import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../utils/colorTheme.dart';

class Button extends GetResponsiveWidget {
  String text = "";
  void Function() onPressed = () {};
  EdgeInsets padding = EdgeInsets.symmetric(horizontal: 80);

  Button(
      {text = "",
      required void Function() onPressed,
      padding = const EdgeInsets.symmetric(horizontal: 80)}) {
    this.text = text;
    this.onPressed = onPressed;
    this.padding = padding;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: 60,
      width: 200,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: textonormal,
        ),
      ),
    );
  }
}
