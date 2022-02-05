import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

import '../../../utils/colorTheme.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGround,
        appBar: AppBar(
          actions: [
            Container(
              margin: EdgeInsets.only(top: 15, right: 5),
              width: 50,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                ),
              ),
            ),
          ],
          elevation: 0,
          // leadingWidth: 10,
          centerTitle: false,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black54,
              size: 32,
            ),
          ),
          backgroundColor: verdeBosta,
          title: Text("Olá, " + "Paulete Margarete", style: appbartext),
        ),
        body: ListView(
          children: [
            // Padding(
            //   padding: EdgeInsets.only(left: 80),
            //   child: Text("você tem uma nova notificação"),
            // ),
            Container(
              height: 30,
              width: double.maxFinite,
              decoration: BoxDecoration(color: verdeBosta),
            ),
            Divider(height: 0, color: iconGray),
            Container(
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: verdeBosta,
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(20),
                //   topRight: Radius.circular(20),
                // ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Text(
                "Realize seu agendamento e pré-atendimento de consultas.",
                style: textonormal,
              ),
            ),

            //fim
          ],
        ));
  }
}
