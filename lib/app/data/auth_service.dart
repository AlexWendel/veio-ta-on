import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/data/database.dart';
import 'package:hospital_maraba/app/models/paciente.dart';
import 'package:hospital_maraba/app/models/user.dart';

class AuthService extends GetxService {
  late UserLocal currentUser;
  late String currentUserID;

  @override
  void onReady() async {
    if (FirebaseAuth.instance.currentUser?.uid != null) {
      currentUser = await Get.find<DatabaseService>()
          .getUserFromFirestore(FirebaseAuth.instance.currentUser?.uid);
    }
    super.onInit();
  }

  void registerUser(
      String email, String password, Map<String, dynamic> extraData) async {
    try {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((UserCredential userCredential) async =>
              await _createUserData(userCredential.user!.uid));
    } on FirebaseException catch (e) {
      switch (e.code) {
        case "email-already-in-use":
          break;
        case "invalid-email":
          break;
        case "operation-not-allowed":
          break;
        case "weak-password":
          break;
      }
    }
  }

  Future<UserLocal> _createUserData(String uid) async {
    UserLocal newUserData = UserLocal(uid: uid);
    Get.find<DatabaseService>().userConverter.doc(uid).set(newUserData);
    return newUserData;
  }

  Future<UserLocal> _getUserData(String uid) async {
    return Get.find<DatabaseService>().getUserFromFirestore(uid);
  }

  void login(String email, String password) async {
    try {
      FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((credential) async {
        if (credential.user != null) {
          _getUserData(credential.user!.uid)
              .then((value) => currentUser = value);
        }
      });
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "invalid-mail":
          break;
        case "user-disabled":
          break;
        case "wrong-password":
          break;
        case "user-not-found":
          break;
      }
    }
  }

  void sendRecoveryEmail(String email) async {
    UserLocal? foundUser =
        await Get.find<DatabaseService>().findUserByEmail(email);
    if (foundUser == null) {
      // TODO: Criar exceção custom para enviar mensagem para onde for necessário.
      throw Exception("Email não registrado.");
    } else {
      FirebaseAuth.instance.sendPasswordResetEmail(email: foundUser.email);
    }
  }
}
