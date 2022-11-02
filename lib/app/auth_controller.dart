import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:hospital_maraba/app/models/register_form.dart';
import 'models/login_form.dart';
import 'utils/root.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  final controller = Get.put(AuthController);
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final Rxn<User> _firebaseUser = Rxn<User>();

  User? get user => _firebaseUser.value;
  @override
  void onInit() {
    _firebaseUser.bindStream(auth.authStateChanges());
    super.onInit();
  }

  void register(RegisterForm form) async {
    String errorMessage;
    Map<String, String> errorMessages = {
      'weak-password':
          "Senha informada muito fraca! Dica: Insira símbolos, números e/ou letras maiúsculas na sua senha.",
      'email-already-in-use': "Uma conta já existe para este endereço de email!"
    };

    try {
      form.validate();
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: form.email, password: form.password);
    } catch (e) {
      errorMessage = e.toString();
      if (e.runtimeType == FirebaseAuthException) {
        e as FirebaseAuthException;
        errorMessage = e.message.toString();
        if (errorMessages.containsKey(e.code)) {
          errorMessage = errorMessages[e.code]!;
        }
      }

      Get.snackbar("Falha no registro", "Não foi possível criar seu usuário",
          backgroundColor: Get.theme.primaryColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Falha no registro!",
            style: TextStyle(color: Colors.white),
          ),
          messageText: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ));
      return;
    }

    //TODO: Verificar se o cartão do sus já está vinculado a uma conta.
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
  }

  void login(LoginForm form) async {
    print("Tentando logar");
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: form.susNumber, password: form.password);
      print("logado disgraca");
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
    // try {
    //   await FirebaseFirestore.instance.clearPersistence();
    // } catch (e) {
    //   print(e);
    // }

    // await FirebaseFirestore.instance.clearPersistence();
    Get.offAll(() => Root());
  }
}
