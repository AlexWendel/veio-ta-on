import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/modules/Login/widgets/login_form_widget.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  final controller = Get.put(LoginController());
  // final loginForm = LoginFormWidget();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(left: 300, right: 300),
        child: ListView(
          controller: ScrollController(),
          children: [
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
            Flexible(
              child: InkWell(
                onTap: () async {},
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: titleFontSize / context.textScaleFactor,
                      color: Color(0xff545454)),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Wrap(runSpacing: 15, children: [
              // susCardInput,
              TextFormField(
                // focusNode: passwordFocusNode,
                style: TextStyle(color: Colors.black87),
                obscureText: false,
                textInputAction: TextInputAction.done,
                // controller: passwordController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Get.theme.primaryColor)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  hintText: "Digite seu email",
                  hintStyle: TextStyle(
                      fontSize: defaultFontSize / context.textScaleFactor),
                  prefixIcon: Icon(Icons.person, size: 27),
                ),
              )
            ]),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: InkWell(
                onTap: () async {},
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: titleFontSize / context.textScaleFactor,
                      color: Color(0xff545454)),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Wrap(runSpacing: 15, children: [
              // susCardInput,
              TextFormField(
                // focusNode: passwordFocusNode,
                style: TextStyle(color: Colors.black87),
                obscureText: true,
                textInputAction: TextInputAction.done,
                // controller: passwordController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Get.theme.primaryColor)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  hintText: "Digite sua senha",
                  hintStyle: TextStyle(
                      fontSize: defaultFontSize / context.textScaleFactor),
                  prefixIcon: Icon(Icons.lock, size: 27),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
