import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/registerform.dart';
import 'package:hospital_maraba/app/modules/dashboardPage/views/dashboard_page_view.dart';
import 'package:hospital_maraba/app/modules/home/views/home_view.dart';
import 'package:hospital_maraba/app/models/user.dart';

import 'models/loginform.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  final controller = Get.put(AuthController);

  var hasSeenLoginScreen = false.obs;
  Rx<User> currentUser = User(
          name: "Usuário de Teste",
          email: "teste@snst.dev",
          password: "teste123")
      .obs;

  // late Rx<User?> _user;
  // FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    // _user = Rx<User?>(auth.currentUser);
    // _user.bindStream(auth.userChanges());
    // ever(_user, _checkForLogin);
    _checkForLogin();
  }

  _checkForLogin() {
    print("Lets goo");
    if (!hasSeenLoginScreen.value) {
      Get.off(() => DashboardPageView());
    } else {
      Get.off(() => HomeView());
    }
    //   print("Sem usuário, vá para a página de login");
    // if (user == null) {
    // Get.offAll(() => DashboardPageView());
    // } else {
    //   Get.offAll(HomeView());
    // }
  }

  void register(RegisterForm form) async {
    // await auth.createUserWithEmailAndPassword(
    //     email: form.email, password: form.password);
    print(form.name);
    print(form.email);
    print(form.password);
    if (!(form.email.isEmpty && form.password.isEmpty && form.name.isEmpty)) {
      Get.snackbar("Registrado com sucesso!", "Usuário registrado",
          backgroundColor: Get.theme.primaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text("Usuário registrado com sucesso!"),
          messageText: Text("O usuário foi registrado com sucesso"));

      currentUser.value.name = form.name;
      currentUser.value.email = form.email;
      currentUser.value.password = form.password;
      Get.offAll(() => HomeView());
      print("Nominho:" + currentUser.value.firstName);
    } else {
      Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
          backgroundColor: Get.theme.primaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text("Falha no registro!"),
          messageText: Text("Todos os campos precisam ser preenchidos!"));
    }
  }

  void login(LoginForm form) async {
    print(form.email);
    if (!(form.email.isEmpty && form.password.isEmpty)) {
      currentUser.value.email = form.email;
      currentUser.value.password = form.password;
      Get.offAll(() => HomeView());
      print("Nominho:" + currentUser.value.firstName);
    } else {
      Get.snackbar("Sobre o Login", "Não foi possível realizar o login",
          backgroundColor: Get.theme.primaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text("Falha no Login!"),
          messageText: Text("Algum dos campos de login está vazio."));
    }
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
    Get.offAll(() => DashboardPageView());
    // await auth.signOut();
  }
}
