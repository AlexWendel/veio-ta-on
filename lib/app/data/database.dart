import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/models/local.dart';

import '../models/user.dart';

Future<UserLocal> getUserFromFirestore(String? uid) async {
  // await FirebaseFirestore.instance.disableNetwork(); //Para testar offline
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

//TODO: Inserir dados no database e testar se está funcionando
Future<List<QueryDocumentSnapshot<Agendamento>>>
    getAgendamentoFromFirestoreUsingPacienteUid(String uidAgendamento) async {
  final agendamentoRef = FirebaseFirestore.instance
      .collection('consulta')
      .withConverter(
          fromFirestore: (snapshot, _) =>
              Agendamento.fromJson(snapshot.data()!, snapshot.id),
          toFirestore: (Agendamento agendamento, _) => agendamento.toJson());
  final querySnapshot =
      await agendamentoRef.where('pacienteID', isEqualTo: uidAgendamento).get();
  return querySnapshot.docs;
}

//TODO Fazer...
void createAgendamento(Agendamento formAgendamento) async {}
//TODO Fazer...
Future<List<Local>> getLocalFromFirestore() async {
  return [Local()];
}
