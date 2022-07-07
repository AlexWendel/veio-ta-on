import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/color_theme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

Map<int, String> _months = {
  1: "Janeiro",
  2: "Fevereiro",
  3: "Março",
  4: "Abril",
  5: "Maio",
  6: "Junho",
  7: "Julho",
  8: "Agosto",
  9: "Setembro",
  10: "Outubro",
  11: "Novembro",
  12: "Dezembro"
};

class setMonth extends GetView {
  final int month;
  final Function()? tapBack;
  final Function()? tapForWard;

  setMonth({
    required this.month,
    required this.tapBack,
    required this.tapForWard,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      // height: 300,
      // width: 150,
      decoration: BoxDecoration(
          color: backGroundCard, borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
//.......seta pra voltar

          InkWell(
            onTap: tapBack,
            child: Container(
              // height: 40,
              width: 30,
              padding: EdgeInsets.only(
                right: 5,
                top: 5,
                bottom: 5,
              ),
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(),
              // color: Get.theme.primaryColor,
              // borderRadius: BorderRadius.circular(5)),
              child: Icon(
                Icons.arrow_back_ios,
                color: iconGray,
                size: 35,
              ),
            ),
          ),
          VerticalDivider(
            width: 2,
            thickness: 2,
            color: Colors.black,
            indent: 2,
          ),
//.......mes atual
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              _months[month]!,
              style: TextStyle(
                  color: Get.theme.hintColor.withOpacity(0.6),
                  fontSize: titleFontSize),
            ),
          ),
          VerticalDivider(
            width: 2,
            thickness: 2,
            color: Colors.black,
            indent: 2,
          ),
//.......seta pra passar
          InkWell(
            onTap: tapForWard,
            child: Container(
              // height: 40,
              width: 30,
              padding: EdgeInsets.only(
                right: 5,
                top: 5,
                bottom: 5,
              ),
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.arrow_forward_ios,
                color: iconGray,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
