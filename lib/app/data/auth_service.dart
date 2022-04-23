import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/data/database.dart';
import 'package:hospital_maraba/app/models/paciente.dart';
import 'package:hospital_maraba/app/models/user.dart';

class AuthService extends GetxService {
  late UserLocal currentUser;

  @override
  void onReady() async {
    if (FirebaseAuth.instance.currentUser?.uid != null) {
      currentUser = await Get.find<DatabaseService>()
          .getUserFromFirestore(FirebaseAuth.instance.currentUser?.uid);
    }
    super.onInit();
  }
}
