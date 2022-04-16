import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/login/widgets/buttonSigin.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import '../controllers/login_controller.dart';
import 'package:hospital_maraba/app/modules/login/widgets/inputWdget.dart';

class LoginView extends GetView<LoginController> {
  @override
  final controller = Get.put(LoginController());
  // final loginForm = LoginFormWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 300, right: 300),
          child: ListView(
            controller: ScrollController(),
            children: [
//------------logo----------------------------------------
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 15, right: 50, left: 50),
                width: Get.width / 1.6,
                height: Get.height / 2.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('assets/images/realLogo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
//------------Login----------------------------------------
              Text(
                "Login",
                style: TextStyle(
                  fontSize: titleFontSize / context.textScaleFactor,
                  color:
                      // Color(0xff545454
                      Get.theme.highlightColor,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              InputWidget(
                inputText: 'Digite seu email',
                obscure: false,
                icone: Icon(Icons.person, size: 27),
              ),
              SizedBox(
                height: 20,
              ),
//------------senha----------------------------------------
              Text(
                "Senha",
                style: TextStyle(
                    fontSize: titleFontSize / context.textScaleFactor,
                    color: Get.theme.highlightColor),
              ),
              SizedBox(
                height: 5,
              ),
              InputWidget(
                inputText: 'Digite sua senha',
                obscure: true,
                icone: Icon(Icons.lock, size: 27),
              ),
              Wrap(runSpacing: 15, children: [
                // susCardInput,
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () async {},
                    child: Text(
                      "Esqueci minha senha",
                      style: TextStyle(
                          fontSize: defaultFontSize / context.textScaleFactor,
                          color: Get.theme.secondaryHeaderColor),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
//------------Botão entrar----------------------------------------
              ButtonSigin(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
