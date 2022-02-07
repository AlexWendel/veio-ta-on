import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/authcontrolller.dart';
import 'package:hospital_maraba/app/models/loginform.dart';
import 'package:hospital_maraba/app/modules/Login/widgets/senha.dart';
import 'package:hospital_maraba/app/modules/dashboardPage/views/dashboard_page_view.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/utils/colorTheme.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/button.dart';
import 'package:hospital_maraba/app/widgets/inputText.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  final controller = Get.put(LoginController());

  final emailInput = InputText(
      hintText: "Digite seu e-mail", icon: Icon(Icons.email_outlined));

  final passwordInput = InputText(
      hintText: "Digite sua senha",
      icon: Icon(Icons.lock_outline),
      obfuscatedField: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, right: 5),
              width: Get.width / 1.6,
              height: Get.height / 2.3,
              decoration: BoxDecoration(
                // shape: BoxShape.circle,
                // color: backGround,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('imgs/realLogo.jpg'),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            emailInput,
            SizedBox(height: 10),
            passwordInput,
            Divider(
              color: Colors.transparent,
              height: 15,
            ),
            InkWell(
              onTap: () async {
                showModalBottomSheet(
                  backgroundColor: backGround,
                  isScrollControlled: false,
                  useRootNavigator: false,
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
                    "Esqueceu sua senha? ",
                    style: TextStyle(
                        fontSize:
                            sectionHeaderFontSize / context.textScaleFactor,
                        color: Colors.black54),
                  ),
                  InkWell(
                      onTap: () async {
                        showModalBottomSheet(
                          backgroundColor: backGround,
                          isScrollControlled: false,
                          useRootNavigator: false,
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
                      },
                      child: Text(
                        "Clique aqui",
                        style: TextStyle(
                            fontSize:
                                sectionHeaderFontSize / context.textScaleFactor,
                            color: Colors.black87),
                      )),
                ],
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 20,
            ),
            ElevatedButton(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text("Entrar",
                      style: Get.theme.textTheme.headline5?.copyWith(
                          color: Get.theme.canvasColor,
                          fontWeight: FontWeight.w600))),
              onPressed: () {
                AuthController.instance.login(LoginForm(
                    email: emailInput.textFieldController.value.value.text,
                    password: passwordInput.textFieldController.value.text));
                // Get.offAll(() => HomeView());
                // AuthController.instance.login(LoginForm(
                //     email: emailInput.textFieldController.value.value.text,
                //     password: passwordInput.textFieldController.value.text));
              },
            )
          ],
        ),
      )),
    );
  }
}
