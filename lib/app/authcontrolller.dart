import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/registerform.dart';
import 'package:hospital_maraba/app/modules/Login/views/login_view.dart';
import 'package:hospital_maraba/app/modules/dashboardPage/views/dashboard_page_view.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';

import 'models/loginform.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _checkForLogin);
  }

  _checkForLogin(User? user) {
    if (user == null) {
      print("Sem usuário, vá para a página de login");
      Get.offAll(DashboardPageView());
    } else {
      Get.offAll(HomeView());
    }
  }

  void register(RegisterForm form) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: form.email, password: form.password);
    } catch (e) {
      Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text("Falha no registro!"),
          messageText: Text(e.toString()));
    }
  }

  void login(LoginForm form) async {
    try {
      await auth.signInWithEmailAndPassword(
          email: form.email, password: form.password);
    } catch (e) {
      Get.snackbar("Sobre o Login", "Não foi possível realizar o login",
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text("Falha no Login!"),
          messageText: Text(e.toString()));
    }
  }

  void logout() async {
    await auth.signOut();
  }
}
