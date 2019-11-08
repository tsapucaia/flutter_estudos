class Member {
  String key;
  String nome;
  DateTime dataNascimento;
  bool bebidaAlcoolica;

  Member(this.nome, this.dataNascimento, this.bebidaAlcoolica);

  /*Member.fromSnapshot(DataSnapshot snapshot) :
        this.key = snapshot.key,
        this.nome = snapshot.value["nome"];*/

  toJson() {
    return {
      "key": this.key,
      "nome": this.nome,
      "dataNascimento": this.dataNascimento,
      "bebidaAlcoolica": this.bebidaAlcoolica
    };
  }
}