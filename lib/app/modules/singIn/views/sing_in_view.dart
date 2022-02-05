import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sing_in_controller.dart';

class SingInView extends GetView<SingInController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingInView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SingInView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
