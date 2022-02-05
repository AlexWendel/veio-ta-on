import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/home/widgets/card.dart';

import '../controllers/home_controller.dart';

import '../../../utils/colorTheme.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: verdeBosta,
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

            Divider(height: 50, color: iconGray),
            Container(
              height: 50,
              width: double.maxFinite,
              decoration: BoxDecoration(color: verdeBosta),
            ),
            Container(
              height: 30,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: backGround,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
            ),

            Container(
              color: backGround,
              height: 1000,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Text(
                      "Realize seu agendamento e pré-atendimento de consultas.",
                      style: textonormal,
                    ),
                  ),
                  CardW(),
                  CardW(),
                  CardW(),
                  CardW(),
                  CardW(),
                  CardW(),
                  CardW(),
                  CardW(),
                ],
              ),
            )
            //fim
          ],
        ));
  }
}
