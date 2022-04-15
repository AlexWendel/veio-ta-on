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
  // Rx<User> _firebaseUser = Rx<User>();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  void onInit() {
    super.onInit();
    _checkForLogin();
  }

  _checkForLogin() {
    //TODO: Isso está gerando problemas de estado no web com o hotreload

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
        Get.offAll(() => DashboardView());
      } else {
        print('User is signed in!');
        Get.offAll(() => HomeView());
      }
    });
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
    } else if (form.susNumber.length != 15) {
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
    } else if (form.password.length < 8) {
      Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
          backgroundColor: Get.theme.primaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Falha no registro!",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            "A senha deve conter no mínimo 8 dígitos!",
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
            titleText: Text("Falha no registro!",
                style: TextStyle(color: Colors.white)),
            messageText: Text(
                "Senha informada muito fraca! Dica: Insira símbolos, números e/ou letras maiúsculas na sua senha.",
                style: TextStyle(color: Colors.white)));
        return;
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
            backgroundColor: Get.theme.primaryColor,
            snackPosition: SnackPosition.BOTTOM,
            titleText: Text("Falha no registro!",
                style: TextStyle(color: Colors.white)),
            messageText: Text(
                "Uma conta já existe para este endereço de email!",
                style: TextStyle(color: Colors.white)));
        return;
      } else {
        print(e);
        Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
            backgroundColor: Get.theme.primaryColor,
            snackPosition: SnackPosition.BOTTOM,
            titleText: Text("Falha no registro!",
                style: TextStyle(color: Colors.white)),
            messageText:
                Text(e.toString(), style: TextStyle(color: Colors.white)));
        return;
      }
    }
    //Verificar se o cartão do sus já está vinculado a uma conta.

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
      "telefone": form.phone,
      "cpf": form.cpf
    });
    await userDataStorage
        .collection('paciente')
        .doc('1')
        .set({'cartaoSUS': form.susNumber});
    _checkForLogin();
    // Get.off(() => HomeView());
  }

  void login(LoginForm form) async {
    try {
      await FirebaseAuth.instance.setPersistence(Persistence.SESSION);
    } catch (e) {
      print(e);
    }
    if (form.susNumber.length != 15) {
      Get.snackbar("Falha no acesso", "O cartão SUS tem 15 dígitos!",
          backgroundColor: Get.theme.primaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Falha no acesso!",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            "O cartão SUS tem 15 dígitos!",
            style: TextStyle(color: Colors.white),
          ));
      return;
    }
    String queryDocumentReference = await FirebaseFirestore.instance
        .collectionGroup('paciente')
        .where('cartaoSUS', isEqualTo: form.susNumber)
        .get()
        .then((QuerySnapshot querySnapshot) {
      print("Query executed. results:" + querySnapshot.size.toString());
      if (querySnapshot.size != 0) {
        return querySnapshot.docs[0].reference.parent.parent!.path;
      }
      return "null";
    });
    print(queryDocumentReference);
    if (queryDocumentReference == "null") {
      Get.snackbar("Falha no acesso", "Cartão SUS não encontrado!",
          backgroundColor: Get.theme.primaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText:
              Text("Falha no acesso!", style: TextStyle(color: Colors.white)),
          messageText: Text("Cartão SUS não encontrado!",
              style: TextStyle(color: Colors.white)));
      return null;
    }
    Map<String, dynamic> userData = await FirebaseFirestore.instance
        .doc(queryDocumentReference)
        .get()
        .then((snapshot) => snapshot.data()!);

    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: userData["email"], password: form.password);
      return;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        Get.snackbar("Falha no acesso", "Senha incorreta!",
            backgroundColor: Get.theme.primaryColor,
            snackPosition: SnackPosition.BOTTOM,
            titleText:
                Text("Falha no acesso!", style: TextStyle(color: Colors.white)),
            messageText: Text("Senha incorreta!",
                style: TextStyle(color: Colors.white)));
        return;
      }

      print(e.code);
    }
    print("Tentando fazer login");
    _checkForLogin();
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
    await auth.signOut();
    await FirebaseFirestore.instance.clearPersistence();
    Get.offAll(() => DashboardView());
  }
}
