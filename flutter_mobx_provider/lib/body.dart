import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx1/controller.dart';
import 'package:provider/provider.dart';
 
class BodyWidget extends StatelessWidget {
  
  _textField({String labelText, onChanged, errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Observer(
            builder: (BuildContext context) {
              return _textField(
                labelText: "Nome",
                onChanged: controller.client.changeName,
                errorText: controller.validateName,
              );
            },
          ),
          Observer(
            builder: (BuildContext context) {
              return _textField(
                labelText: "Email",
                onChanged: controller.client.changeEmail,
                errorText: controller.validateEmail,
              );
            },
          ),
          SizedBox(
            height: 50,
          ),
          Observer(
            builder: (BuildContext context) {
              return RaisedButton(
                child: Text("Salvar"),
                onPressed: controller.isValid ? () {} : null,
              );
            },
          ),
        ],
      ),
    );
  }
}
