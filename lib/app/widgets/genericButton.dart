import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';

class GenericButton extends GetView {
  final Text text;
  final Icon icon;
  final Color color;
  final Function()? onPressed;
  final bool iconAtLeft;

  GenericButton(
      {this.text = const Text(""),
      this.icon = const Icon(Icons.downhill_skiing),
      this.color = Colors.black,
      this.onPressed,
      this.iconAtLeft = false});

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      text,
      icon,
    ];

    if (iconAtLeft) {
      children = [
        icon,
        text,
      ];
    }

    return Container(
        margin: EdgeInsets.all(20),
        height: 50,

        // width: 200,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          onPressed: onPressed,
          child: Row(
            children: children,
          ),
        ));
  }
}

class GenericButtonLeftIcon extends GetView {
  final Text text;
  final Icon icon;
  final Color color;
  final Function()? onPressed;

  GenericButtonLeftIcon(
      {this.text = const Text(""),
      this.icon = const Icon(Icons.downhill_skiing),
      this.color = Colors.black,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        height: 50,

        // width: 200,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          onPressed: onPressed,
          child: Row(
            children: [icon, text],
          ),
        ));
  }
}
