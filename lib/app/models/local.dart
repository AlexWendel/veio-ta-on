import 'package:cloud_firestore/cloud_firestore.dart';

class Local {
  String nome = "Local 1";
  String endereco = "Endereço 1";
  String bairro = "Nova Marabá";
  String logradouro = "";
  String cidade = "Marabá";
  String uf = "PA";

  late String referencia;
  late GeoPoint coordenadas;
}
