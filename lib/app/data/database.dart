import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:hospital_maraba/app/models/agendamento.dart';
import 'package:hospital_maraba/app/models/especialidade.dart';
import 'package:hospital_maraba/app/models/local.dart';
import 'package:hospital_maraba/app/models/user.dart';

const userCollection = "userDataStorage";
const agendamentosCollection = "agendamento";
const locaisCollection = "local";
const especialidadesCollection = "especialidades";
const horariosCollection = "horarios_agendamentos";

class DatabaseService extends GetxService {
  final CollectionReference userDataCollectionRef =
      FirebaseFirestore.instance.collection(userCollection);

  final CollectionReference<UserLocal> userConverter =
      FirebaseFirestore.instance.collection(userCollection).withConverter(
          fromFirestore: (snapshot, _) =>
              UserLocal.fromJson(snapshot.data()!, snapshot.id),
          toFirestore: (UserLocal user, _) => user.toJson());

  final CollectionReference agendamentosCollectionRef =
      FirebaseFirestore.instance.collection(agendamentosCollection);

  final CollectionReference<Agendamento> agendamentosConverter =
      FirebaseFirestore.instance
          .collection(agendamentosCollection)
          .withConverter(
              fromFirestore: (snapshot, _) {
                Map<String, dynamic> data = snapshot.data()!;
                data.putIfAbsent("id", () => snapshot.id);
                return Agendamento.fromJson(data);
              },
              toFirestore: (Agendamento agendamento, _) =>
                  agendamento.toJson());

  final CollectionReference locaisCollectionRef =
      FirebaseFirestore.instance.collection(locaisCollection);

  final CollectionReference<Local> locaisConverter =
      FirebaseFirestore.instance.collection(locaisCollection).withConverter(
          fromFirestore: (snapshot, options) {
            Map<String, dynamic>? data = snapshot.data();
            // Adicionando ID aos dados que vão para o model;
            data!.putIfAbsent("id", () => snapshot.id);
            return Local.fromJson(data);
          },
          toFirestore: (Local local, _) => local.toJson());

  final CollectionReference especialidadesCollectionRef =
      FirebaseFirestore.instance.collection(especialidadesCollection);

  final CollectionReference<Especialidade> especialidadesConverter =
      FirebaseFirestore.instance
          .collection(especialidadesCollection)
          .withConverter(
              fromFirestore: (snapshot, options) {
                Map<String, dynamic> data = snapshot.data()!;
                data.putIfAbsent("id", () => snapshot.id);
                return Especialidade.fromJson(data);
              },
              toFirestore: (Especialidade especialidade, _) =>
                  especialidade.toJson());

  final CollectionReference datasAgendamentosCollectionRef =
      FirebaseFirestore.instance.collection(horariosCollection);

  Future<UserLocal> getUserFromFirestore(String? uid) async {
    return userConverter.doc(uid).get().then((snapshot) {
      snapshot.metadata.isFromCache
          ? print("Usando cache local")
          : print("Usando informações do FireStore");
      return snapshot.data()!;
    });
  }

  Future<UserLocal?>? findUserByEmail(String email) async {
    return userConverter.where("email", isEqualTo: email).get().then((value) {
      if (value.docs.isNotEmpty) {
        return value.docs.first.data();
      }
      return null;
    });
  }

  // TODO: Permitir também buscar diretamente por cartão do SUS, CPF, Nome ou RG
  Future<List<Agendamento>> getAllAgendamentosFromPaciente(
      String pacienteID) async {
    DocumentReference pacienteRef = userDataCollectionRef.doc(pacienteID);

    return agendamentosConverter
        .where("paciente", isEqualTo: pacienteRef)
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  Future<List<Agendamento>> getAllAgendamentosFromLocal(String localID) async {
    var agendamentosConverter = agendamentosCollectionRef.withConverter(
        fromFirestore: (snapshot, _) => Agendamento.fromDocument(snapshot),
        toFirestore: (Agendamento agendamento, _) => agendamento.toJson());

    return agendamentosConverter
        .where("local", isEqualTo: locaisCollectionRef.doc(localID))
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  Future<List<Especialidade>> getAllEspecialidades() async {
    return especialidadesConverter
        .orderBy("nome")
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  Future<Especialidade> getEspecialidadeDetails(String especialidadeID) async {
    return especialidadesConverter
        .doc(especialidadeID)
        .get()
        .then((value) => value.data()!);
  }

  Future<Local> getLocal(String localID) async {
    return locaisConverter.doc(localID).get().then((value) => value.data()!);
    //     // TODO: Obter dados e gerar model pra cada especialidade
    //     return value.data();
    // });
  }

  Future<List<Local>> getAllLocais() async {
    return locaisConverter
        .get()
        .then((value) => (value.docs.map((e) => e.data()).toList()));
  }

  Future<List<Local>> getAllLocaisWithEspecialidade(
      String especialidadeID) async {
    return locaisConverter
        .where("exames",
            arrayContains: especialidadesCollectionRef.doc(especialidadeID))
        .get()
        .then((value) => value.docs.map((e) => e.data()).toList());
  }

  //TODO : Criar agendamento e inserir no banco de dados...
  Future<dynamic> createAgendamento(Agendamento newAgendamento) async {
    // TODO: Depois de inserido no banco de dados, notificar o CacheService pra manter informações sobre esse agendamento.
    return agendamentosCollectionRef.add(newAgendamento.toJson());
  }

  Future<void> cancelAgendamento(String agendamentoID) async {
    // TODO: Checar se o agendamento realmente existe antes de tentar deletar. Throw erro se não existir.
    return agendamentosCollectionRef.doc(agendamentoID).delete();
  }
}
