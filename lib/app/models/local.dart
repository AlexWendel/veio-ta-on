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
  Local.fromJson(Map<String, Object> json)
      : this(
            bairro: json['bairro'] as String,
            cidade: json['Cidade'] as String,
            coordenadas: json['coordenadas'] as GeoPoint,
            endereco: json['endereço'] as String,
            exames: json['exames'] as List<String>,
            logradouro: json['logradouro'] as String,
            nome: json['nome'] as String,
            referencia: json['referencia'] as String,
            uf: json['uf'] as String);
  String nome;
  String endereco;
  String bairro;
  String logradouro;
  String cidade;
  String uf;
  String referencia;
  List<String> exames;
  GeoPoint coordenadas;
  Map<String, Object?> toJson() {
    return {
      'nome': nome,
      'endereco': endereco,
      'bairro': bairro,
      'logradouro': logradouro,
      'cidade': cidade,
      'uf': uf,
      'referencia': referencia,
      'exames': exames,
      'coordenadas': coordenadas,
    };
  }
}
