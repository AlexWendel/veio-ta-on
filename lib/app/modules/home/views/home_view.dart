import 'package:flutter/material.dart';
import 'package:hospital_maraba/app/auth_controller.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20),
        controller: ScrollController(),
        children: [
          Text(
            'HomeView is working',
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
              onPressed: () {
                AuthController.instance.logout();
              },
              child: Text("Logout"))
        ],
      )),
    );
  }
}
