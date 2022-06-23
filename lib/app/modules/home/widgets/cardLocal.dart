import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/modules/home/widgets/appBarWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/cardPaciente.dart';
import 'package:hospital_maraba/app/modules/home/widgets/headerWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/seachWidget.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/modules/MainDesign.dart';
import 'package:hospital_maraba/app/widgets/CardHome.dart';

import '../../agendamentos/views/agendamentos_view.dart';

class CardLocal extends GetResponsiveWidget {
  final String text;
  final String img;
  final String localID;

  CardLocal({required this.text, required this.img, required this.localID});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Get.theme.hoverColor,
      child: InkWell(
        // hoverColor: Get.theme.hintColor,
        onTap: () {
          Get.to(HomeView(localID: localID));
        },
        child: Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(0),
          height: 190,
          width: 230,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 5, left: 5),
                width: 150,
                decoration: BoxDecoration(),
                child: Image.asset(
                  img,
                  height: 50,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: defaultFontSize,
                  color: Get.theme.secondaryHeaderColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
