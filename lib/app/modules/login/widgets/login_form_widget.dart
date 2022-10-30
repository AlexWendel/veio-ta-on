import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/auth_controller.dart';
import 'package:hospital_maraba/app/models/login_form.dart';
import 'package:hospital_maraba/app/modules/Login/widgets/password_recovery.dart';
import 'package:hospital_maraba/app/utils/common.sizes.dart';
import 'package:hospital_maraba/app/widgets/input_text.dart';

extension Utility on BuildContext {
  void nextEditableTextFocus() {
    do {
      FocusScope.of(this).nextFocus();
    } while (FocusScope.of(this).focusedChild!.context == null);
  }
}

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
            TextFormField(
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Get.theme.primaryColor)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintStyle: TextStyle(
                      fontSize: defaultFontSize / context.textScaleFactor),
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
            TextFormField(
              focusNode: passwordFocusNode,
              onChanged: (value) {},
              style: TextStyle(color: Colors.black87),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Insira sua senha!';
                }
                if (value.length < 8) {
                  return 'A senha deve conter no mínimo 8 caracteres!';
                }
                return null;
              },
              obscureText: true,
              textInputAction: TextInputAction.done,
              controller: passwordController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Get.theme.primaryColor)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Senha",
                hintStyle: TextStyle(
                    fontSize: defaultFontSize / context.textScaleFactor),
                prefixIcon: Icon(Icons.lock_outline, size: 27),
              ),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                child: Text(
                  "Esqueceu sua senha? ",
                  style: TextStyle(
                      fontSize: sectionHeaderFontSize / context.textScaleFactor,
                      color: Colors.black54),
                ),
              ),
              Flexible(
                child: InkWell(
                  onTap: () async {
                    showModalBottomSheet(
                      isScrollControlled: false,
                      useRootNavigator: false,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
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
                  ),
                ),
              )
            ],
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
              // AuthController.instance.login(LoginForm());
              if (_formKey.currentState!.validate()) {
                try {
                  AuthController.instance.login(LoginForm(
                      susNumber: maskSusCard.getUnmaskedText(),
                      password: passwordController.text));
                } catch (e) {
                  Get.showSnackbar(GetSnackBar(
                      title: "Erro no login", message: e.toString()));
                }
              }
            },
          )
        ],
      ),
    );
  }
}
