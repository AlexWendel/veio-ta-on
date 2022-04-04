import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:hospital_maraba/app/models/register_form.dart';
import 'package:hospital_maraba/app/modules/dashboard/views/dashboard_view.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'models/login_form.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  final controller = Get.put(AuthController);
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  void onReady() {
    super.onReady();
    _checkForLogin();
  }

  _checkForLogin() {
    // FirebaseAuth.instance.authStateChanges().listen((User? user) {
    //   if (user == null) {
    //     print('User is currently signed out!');
    //     Get.off(() => DashboardView());
    //   } else {
    //     print('User is signed in!');
    //     Get.off(() => HomeView());
    //   }
    // });
  }

  void register(RegisterForm form) async {
    await FirebaseAuth.instance.setPersistence(Persistence.NONE);
    print(form);
    if (form.name.isEmpty ||
        form.cpf.isEmpty ||
        form.rg.isEmpty ||
        form.susNumber.isEmpty ||
        form.phone.isEmpty ||
        form.email.isEmpty ||
        form.emailConfirmation.isEmpty ||
        form.password.isEmpty ||
        form.passwordConfirmation.isEmpty) {
      Get.snackbar(
        "Falha no registro",
        "Não foi possível criar seu usuário",
        backgroundColor: Get.theme.primaryColor,
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Falha no registro!",
          style: TextStyle(color: Colors.white),
        ),
        messageText: Text(
          "Todos os campos precisam ser preenchidos!",
          style: TextStyle(color: Colors.white),
        ),
      );
      return;
    } else if (!form.cpf.isCpf) {
      Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
          backgroundColor: Get.theme.primaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Falha no registro!",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            "Insira um CPF válido",
            style: TextStyle(color: Colors.white),
          ));
      return;
    } else if (form.rg.length < 7) {
      Get.snackbar(
        "Falha no registro",
        "Não foi possível criar seu usuário",
        backgroundColor: Get.theme.primaryColor,
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Falha no registro!",
          style: TextStyle(color: Colors.white),
        ),
        messageText: Text(
          "Insira um RG válido",
          style: TextStyle(color: Colors.white),
        ),
      );
      return;
    } else if (form.susNumber.length < 15) {
      Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
          backgroundColor: Get.theme.primaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Falha no registro!",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            "Insira um número do SUS válido",
            style: TextStyle(color: Colors.white),
          ));
      return;
    } else if (form.phone.length < 11) {
      Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
          backgroundColor: Get.theme.primaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Falha no registro!",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            "Insira um número de telefone válido",
            style: TextStyle(color: Colors.white),
          ));
      return;
    } else if (!form.email.isEmail) {
      Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
          backgroundColor: Get.theme.primaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Falha no registro!",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            "Insira um email válido",
            style: TextStyle(color: Colors.white),
          ));
      return;
    } else if (!form.emailConfirmation.isEmail) {
      Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
          backgroundColor: Get.theme.primaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Falha no registro!",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            "Insira um email válido no campo de confirmação",
            style: TextStyle(color: Colors.white),
          ));
      return;
    } else if (form.email != form.emailConfirmation) {
      Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
          backgroundColor: Get.theme.primaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Falha no registro!",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            "Os emails não conincidem!",
            style: TextStyle(color: Colors.white),
          ));
      return;
    } else if (form.password != form.passwordConfirmation) {
      Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
          backgroundColor: Get.theme.primaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Falha no registro!",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            "As senhas não conincidem!",
            style: TextStyle(color: Colors.white),
          ));
      return;
    }
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: form.email, password: form.password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
            backgroundColor: Get.theme.primaryColor,
            snackPosition: SnackPosition.BOTTOM,
            titleText: Text("Falha no registro!"),
            messageText: Text(
                "Senha informada muito fraca! Dica: Insira símbolos, números e/ou letras maiúsculas na sua senha."));
        return;
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
            backgroundColor: Get.theme.primaryColor,
            snackPosition: SnackPosition.BOTTOM,
            titleText: Text("Falha no registro!"),
            messageText: Text("Todos os campos precisam ser preenchidos!"));
        return;
      } else {
        print(e);
        Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
            backgroundColor: Get.theme.primaryColor,
            snackPosition: SnackPosition.BOTTOM,
            titleText: Text("Falha no registro!"),
            messageText: Text(e.toString()));
        return;
      }
    }
    var currentUser = FirebaseAuth.instance.currentUser;
    DocumentReference userDataStorage = FirebaseFirestore.instance
        .collection('userDataStorage')
        .doc(currentUser?.uid);
    await userDataStorage.set({
      "nome": form.name.substring(0, form.name.indexOf(" ")),
      "sobrenome":
          form.name.substring(form.name.indexOf(" ") + 1, form.name.length),
      "email": form.email,
      "rg": form.rg,
      "senha": form.password,
      "telefone": form.phone,
      "cpf": form.cpf
    });
    await userDataStorage
        .collection('paciente')
        .doc('1')
        .set({'cartaoSUS': form.susNumber});
    //TODO: Mostrar cadastro sucedido, e abrir tela principal
  }

  void login(LoginForm form) async {
    await FirebaseAuth.instance.setPersistence(Persistence.NONE);
    //TODO: Configurar login com dados do Firestore
  }

  void recuperarSenha() {
    //TODO: Buscar como fazer a recuperação de senha com o firebase
    Get.snackbar("Recuperação de senha",
        "As instruções foram enviadas para o email informado.",
        backgroundColor: Get.theme.primaryColor,
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text("Email de recuperação enviado."),
        messageText: Text(
            "As instruções de recuperação foram enviadas para o email informado."));
  }

  void logout() async {
    //TODO: Habilitar signout com o firebase
    // await auth.signOut();
    Get.offAll(() => DashboardView());
  }
}
