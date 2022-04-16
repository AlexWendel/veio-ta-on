import 'package:cloud_firestore/cloud_firestore.dart';

class Local {
  Local(
      {this.nome = "",
      this.endereco = "",
      this.bairro = "",
      this.cidade = "",
      this.uf = "",
      GeoPoint? coordenadas,
      this.logradouro = "",
      this.referencia = "",
      List<String>? exames})
      : this.coordenadas = coordenadas ?? GeoPoint(0, 0),
        this.exames = exames ?? [];
  //TODO: Finalizar fromJson

  // Local.fromJson(Map<String, Object> json) : this(bairro: ,cidade: ,coordenadas: ,endereco: ,exames: , logradouro: ,nome: ,referencia: ,uf: );
  String nome;
  String endereco;
  String bairro;
  String logradouro;
  String cidade;
  String uf;
  String referencia;
  List<String> exames;
  GeoPoint coordenadas;
}
