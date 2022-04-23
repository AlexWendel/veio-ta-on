class Especialidade {
  String id;
  String nome;
  String descricao;
  String nomeMedicoEspecialista;
  List<String>? palavrasChave;

  Especialidade(
      {required this.id,
      required this.nome,
      required this.descricao,
      required this.nomeMedicoEspecialista,
      palavrasChave});

  factory Especialidade.fromJson(Map<String, dynamic> json) => Especialidade(
      id: json["id"],
      nome: json["nome"],
      descricao: json["descricao"],
      nomeMedicoEspecialista: json["nomeMedicoEspecialista"]);

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "nome": nome,
      "descricao": descricao,
      "nomeMedicoEspecialista": nomeMedicoEspecialista
    };
  }
}
