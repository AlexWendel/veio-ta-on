import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user.dart';

Future<UserLocal> getUserFromFirestore(String? uid) async {
  // await FirebaseFirestore.instance.disableNetwork();
  final userRef =
      FirebaseFirestore.instance.collection('userDataStorage').withConverter(
          fromFirestore: (snapshot, _) {
            print("User ID: " + snapshot.id);
            return UserLocal.fromJson(snapshot.data()!, snapshot.id);
          },
          toFirestore: (UserLocal user, _) => user.toJson());
  return userRef.doc(uid).get().then((snapshot) {
    snapshot.metadata.isFromCache
        ? print("Usando cache local")
        : print("Usando informações do FireStore");
    return snapshot.data()!;
  });
}
