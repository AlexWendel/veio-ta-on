import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:hospital_maraba/app/models/register_form.dart';
import 'package:hospital_maraba/app/modules/dashboard/views/dashboard_view.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'models/login_form.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  final controller = Get.put(AuthController);
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _checkForLogin();
  }

  _checkForLogin() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
        Get.off(() => DashboardView());
      } else {
        print('User is signed in!');
        Get.off(() => HomeView());
      }
    });
  }

  void register(RegisterForm form) async {
    await FirebaseAuth.instance.setPersistence(Persistence.NONE);
    if (!(form.email.isEmpty && form.password.isEmpty && form.name.isEmpty)) {
      //TODO: Check if this is working properly

      // Get.snackbar("Registrado com sucesso!", "Usuário registrado",
      //     backgroundColor: Get.theme.primaryColor,
      //     snackPosition: SnackPosition.BOTTOM,
      //     titleText: Text("Usuário registrado com sucesso!"),
      //     messageText: Text("O usuário foi registrado com sucesso"));

    } else {
      Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
          backgroundColor: Get.theme.primaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text("Falha no registro!"),
          messageText: Text("Todos os campos precisam ser preenchidos!"));
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
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
            backgroundColor: Get.theme.primaryColor,
            snackPosition: SnackPosition.BOTTOM,
            titleText: Text("Falha no registro!"),
            messageText: Text("Todos os campos precisam ser preenchidos!"));
      } else {
        print(e);
        Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
            backgroundColor: Get.theme.primaryColor,
            snackPosition: SnackPosition.BOTTOM,
            titleText: Text("Falha no registro!"),
            messageText: Text(e.toString()));
      }
    }
  }

  void login(LoginForm form) async {
    await FirebaseAuth.instance.setPersistence(Persistence.NONE);
    // if (!(form.email.isEmpty && form.password.isEmpty)) {
    //   currentUser.value.email = form.email;
    //   currentUser.value.password = form.password;
    //   Get.offAll(() => HomeView());
    //   print("Nominho:" + currentUser.value.firstName);
    // } else {
    //   Get.snackbar("Sobre o Login", "Não foi possível realizar o login",
    //       backgroundColor: Get.theme.primaryColor,
    //       snackPosition: SnackPosition.BOTTOM,
    //       titleText: Text("Falha no Login!"),
    //       messageText: Text("Algum dos campos de login está vazio."));
    // }
  }

  void recuperarSenha() {
    Get.snackbar("Recuperação de senha",
        "As instruções foram enviadas para o email informado.",
        backgroundColor: Get.theme.primaryColor,
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text("Email de recuperação enviado."),
        messageText: Text(
            "As instruções de recuperação foram enviadas para o email informado."));
  }

  void logout() async {
    Get.offAll(() => DashboardView());
    // await auth.signOut();
  }
}
