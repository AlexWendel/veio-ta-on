import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/home/controllers/home_controller.dart';
import 'package:hospital_maraba/app/modules/home/widgets/appBarWidget.dart';
import 'package:hospital_maraba/app/modules/home/widgets/cardPaciente.dart';
import 'package:hospital_maraba/app/modules/home/widgets/headerWidget.dart';
import 'package:hospital_maraba/app/modules/settings/views/settings_view.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/modules/MainDesign.dart';
import 'package:hospital_maraba/app/widgets/CardHome.dart';

import '../../agendamentos/views/agendamentos_view.dart';

class SeachWidget extends GetResponsiveWidget {
  final String text;

  SeachWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // focusNode: passwordFocusNode,
      style: TextStyle(color: Colors.black87),
      obscureText: false,
      textInputAction: TextInputAction.done,
      // controller: passwordController,
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.search,
          color: Get.theme.hoverColor,
        ),
        fillColor: Colors.white,
        filled: false,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Get.theme.hoverColor)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        hintText: text,
      ),
    );
  }
}
