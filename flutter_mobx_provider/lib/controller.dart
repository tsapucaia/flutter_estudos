import 'package:flutter_mobx1/models/client.dart';
import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

part 'controller.g.dart';

class Controller = _ControllerBase with _$Controller;

abstract class _ControllerBase with Store {
  var client = new Client();

  @computed
  bool get isValid {
    return validateEmail() == null && validateName() == null;
  }

  String validateName() {
    if (client.name == null || client.name.isEmpty) {
      return "Este campo é obrigatório!";
    } else if (client.name.length < 3) {
      return "Seu nome precisa ter mais de 3 caracteres!";
    }
    return null;
  }

  String validateEmail() {
    
    if (client.email == null || client.email.isEmpty) {
      return "Este campo é obrigatório!";
    } else if (!isEmail(client.email)) {
      return  "Email inválido";
    }
    return null;
  }
}
