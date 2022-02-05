import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetResponsiveView<SingInController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crie sua conta", style: appbartext),
        backgroundColor: backGround,
      ),
      body: Center(
          child: ListView(
        padding: EdgeInsets.only(left: 5, right: 5),
        children: [
          Container(
            child: TextField(),
          ),
          Container(
            child: TextField(),
          )
        ],
      )),
    );
  }
}
