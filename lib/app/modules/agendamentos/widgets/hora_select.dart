import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/color_theme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

class HoraSelect extends GetResponsiveWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      // height: 300,
      decoration: BoxDecoration(
          color: backGroundCard, borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              cardHour(text: "08:00", onTap: () {}),
              cardHour(text: "09:00", onTap: () {}),
              cardon(text: "10:00", onTap: () {}),
              cardHour(text: "11:00", onTap: () {}),
              // cardHour(text: "12:00", onTap: () {}),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              cardHour(text: "12:00", onTap: () {}),
              cardHour(text: "13:00", onTap: () {}),
              cardHour(text: "14:00", onTap: () {}),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              cardHour(text: "18:00", onTap: () {}),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     cardHour(text: "19", onTap: () {}),
          //     cardHour(text: "20", onTap: () {}),
          //     cardHour(text: "21", onTap: () {}),
          //     cardHour(text: "22", onTap: () {}),
          //     cardHour(text: "23", onTap: () {}),
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     cardHour(text: "25", onTap: () {}),
          //     cardHour(text: "26", onTap: () {}),
          //     cardHour(text: "27", onTap: () {}),
          //     cardHour(text: "28", onTap: () {}),
          //     cardHour(text: "29", onTap: () {}),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class cardHour extends GetResponsiveWidget {
  final String text;
  final Function()? onTap;

  cardHour({
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
        width: 75,
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
        width: 80,
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
