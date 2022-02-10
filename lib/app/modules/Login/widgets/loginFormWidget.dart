import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/authcontrolller.dart';
import 'package:hospital_maraba/app/models/loginform.dart';
import 'package:hospital_maraba/app/modules/Login/widgets/senha.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';

extension Utility on BuildContext {
  void nextEditableTextFocus() {
    do {
      FocusScope.of(this).nextFocus();
    } while (FocusScope.of(this).focusedChild!.context == null);
  }
}

// Define a custom Form widget.
class LoginFormWidget extends GetWidget {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final FocusNode passwordFocusNode = FocusNode();

  LoginFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Wrap(runSpacing: 10, children: [
            TextField(
              onChanged: (value) {},
              style: TextStyle(color: Colors.black87),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              onEditingComplete: () =>
                  FocusScope.of(context).requestFocus(passwordFocusNode),
              controller: emailController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Get.theme.primaryColor)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Digite seu email",
                hintStyle: TextStyle(
                    fontSize: defaultFontSize /
                        context
                            .textScaleFactor), // TODO: Replace "magic values" for it's theme's equivalent
                prefixIcon: Icon(Icons.email_outlined,
                    size:
                        27), // TODO: Replace "magic values" for it's theme's equivalent
              ),
            ),
            TextField(
              focusNode: passwordFocusNode,
              onChanged: (value) {},
              style: TextStyle(color: Colors.black87),
              onSubmitted: (_) => FocusScope.of(context).unfocus(),
              obscureText: true,
              textInputAction: TextInputAction.done,
              controller: passwordController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Get.theme.primaryColor)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Digite sua senha",
                hintStyle: TextStyle(
                    fontSize: defaultFontSize /
                        context
                            .textScaleFactor), // TODO: Replace "magic values" for it's theme's equivalent
                prefixIcon: Icon(Icons.lock_outline,
                    size:
                        27), // TODO: Replace "magic values" for it's theme's equivalent
              ),
            )
          ]),
          InkWell(
            onTap: () async {
              showModalBottomSheet(
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
                      fontSize: sectionHeaderFontSize / context.textScaleFactor,
                      color: Colors.black54),
                ),
                InkWell(
                    onTap: () async {
                      showModalBottomSheet(
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
              // Validate returns true if the form is valid, or false otherwise.
              if (_formKey.currentState!.validate()) {
                AuthController.instance.login(LoginForm(
                    email: emailController.text,
                    password: passwordController.text));
              }
            },
          )
        ],
      ),
    );
  }
}
