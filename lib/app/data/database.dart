import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/models/especialidade.dart';
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

// TODO: Inserir dados no database e testar se está funcionando
// TODO: Permitir também buscar diretamente por cartão do SUS, CPF, Nome ou RG
Future<List<Agendamento>> getAllAgendamentosFromPaciente(
    String pacienteID) async {
  return [];
}

// TODO : Implementar listagem todas as especialidades
Future<List<Especialidade>> getAllEspecialidades() async {
  var especialidadesRef =
      FirebaseFirestore.instance.collection("especialidade");
  var especialidades = especialidadesRef
      .get()
      .then((snapshot) => List<Especialidade>.from(snapshot.docs));
  return especialidades;
}

// TODO : Implementar listagem de todos os locais
Future<List<Especialidade>> getAllLocais() async {
  return [];
}

//TODO : Criar agendamento e inserir no banco de dados...
void createAgendamento(Agendamento formAgendamento) async {}

//TODO Fazer...
Future<List<Local>> getLocalFromFirestore() async {
  return [];
}
