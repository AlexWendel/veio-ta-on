import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class RadioBox extends GetView {
  @override
  Widget build(BuildContext context) {
    List<Widget> radioList = [
      Text(
        "teste",
        style: TextStyle(color: Colors.black),
      ),
      Text(
        "teste",
        style: TextStyle(color: Colors.black),
      )
    ];
    return Container(
      height: 200,
      width: 200,
      color: Colors.green,
      child: ListView.builder(
        itemBuilder: (BuildContext context, index) => radioList[index],
        itemCount: radioList.length,
      ),
    );
  }
}
