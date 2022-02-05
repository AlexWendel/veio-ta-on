import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetResponsiveView<SingInController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
