import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/color_theme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class DataSelect extends GetResponsiveWidget {
  final numbers = List.generate(31, (index) => '$index');

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 300,
      decoration: BoxDecoration(
          color: backGroundCard, borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     carday(text: "01", onTap: () {}),
          //     carday(text: "02", onTap: () {}),
          //     carday(text: "03", onTap: () {}),
          //     carday(text: "04", onTap: () {}),
          //     carday(text: "05", onTap: () {}),
          //     carday(text: "06", onTap: () {}),
          //   ],
          // ),
          // GridView.builder(
          //     gridDelegate:
          //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          //     itemCount: numbers.length,
          //     itemBuilder: (context, index){
          //       final item = numbers.[index];

          //       return buildNumber(item);
          //     },)
        ],
      ),
    );
  }
}

class carday extends GetResponsiveWidget {
  final String text;
  final Function()? onTap;

  carday({
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: backGround,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              width: 0.4,
              color: cardGray,
            )),
        child: Text(
          text,
          style: TextStyle(
            color: cardGray,
            fontSize: titleFontSize,
          ),
        ),
      ),
    );
  }
}

class cardon extends GetResponsiveWidget {
  final String text;
  final Function()? onTap;

  cardon({
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(5),
        alignment: Alignment.center,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Get.theme.primaryColorLight,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              width: 0.4,
              color: cardGray,
            )),
        child: Text(
          text,
          style: TextStyle(
            color: cardGray,
            fontSize: titleFontSize,
          ),
        ),
      ),
    );
  }
}
