import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/Login/widgets/senha.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetResponsiveView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, right: 5),
              width: Get.width,
              height: Get.height / 2,
              decoration: new BoxDecoration(
                // shape: BoxShape.circle,
                // color: backGround,
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage(
                      "https://i.pinimg.com/564x/49/66/bd/4966bddbf433db57b4ef8556531a6e78.jpg"),
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 10,
            ),
            Container(
                alignment: Alignment.bottomCenter,
                height: 60,
                child: TextField(
                    cursorColor: verdeBosta,
                    decoration: InputDecoration(
                        hintText: "Digite seu e-mail",
                        prefixIcon: Icon(
                          Icons.email,
                          size: 25,
                        ),
                        hintStyle: TextStyle(fontSize: 20)))),
            Divider(
              color: Colors.transparent,
              height: 20,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              child: TextField(
                cursorColor: verdeBosta,
                decoration: InputDecoration(
                  hintText: "Digite sua senha",
                  hintStyle: TextStyle(fontSize: 20),
                  prefixIcon: Icon(
                    Icons.lock,
                    size: 27,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 15,
            ),
            InkWell(
              onTap: () async {
                showModalBottomSheet(
                  backgroundColor: backGround,
                  isScrollControlled: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    //side: BorderSide(color: primaryColor),
                  ),
                  context: context,
                  builder: (context) => Senha(),
                );
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (context) => PerfilPage()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Esqueceu sua senha?",
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                  Text(
                    "Clique aqui",
                    style: TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 20,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 1),
                height: 60,
                width: 200,
                child: ElevatedButton(
                    child: Text(
                      "Entrar",
                      style: textonormal,
                    ),
                    onPressed: () {
                      Get.to(() => HomeView());
                    }))
          ],
        ),
      )),
    );
  }
}
