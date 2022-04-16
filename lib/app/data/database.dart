import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user.dart';

Future<UserLocal> getUserFromFirestore(String? uid) async {
  final userRef = FirebaseFirestore.instance
      .collection('userDataStorage')
      .withConverter(
          fromFirestore: (snapshot, _) => UserLocal.fromJson(snapshot.data()!),
          toFirestore: (UserLocal user, _) => user.toJson());
  return userRef.doc(uid).get().then((snapshot) => snapshot.data()!);
}
