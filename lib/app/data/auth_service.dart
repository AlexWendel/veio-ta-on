import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/data/database.dart';
import 'package:hospital_maraba/app/models/paciente.dart';
import 'package:hospital_maraba/app/models/user.dart';

class AuthService extends GetxService {
  late UserLocal currentUser;

  @override
  void onReady() async {
    currentUser =
        await getUserFromFirestore(FirebaseAuth.instance.currentUser!.uid);
    super.onInit();
  }
}
