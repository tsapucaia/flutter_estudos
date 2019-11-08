

import 'package:despesas_app/models/Member.dart';

class Family {
  String key;
  String nome;
  List<Member> membros;

  Family(this.nome, this.membros);

  /*Family.fromSnapshot(DataSnapshot snapshot) :
        this.key = snapshot.key,
        this.nome = snapshot.value["nome"],
        this.membros = snapshot.value["membros"];*/

  toJson() {
    return {
      "key": this.key,
      "nome": this.nome,
      "membros": this.membros,
    };
  }
}