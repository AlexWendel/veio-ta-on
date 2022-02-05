import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

import '../../../utils/colorTheme.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(null),
        leadingWidth: 0,
        title: Row(
          children: [
            Text('Olá',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 25,
                    fontWeight: FontWeight.w800)),
            IconButton(onPressed: () {}, icon: Icon(Icons.logout))
          ],
        ),
        centerTitle: false,
        backgroundColor: verdeBosta,
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            child: Text("Funfando"),
          )
        ],
      )),
    );
  }
}
