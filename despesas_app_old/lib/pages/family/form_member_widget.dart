import 'package:flutter/material.dart';

// Create a Form widget.
class FormMember extends StatefulWidget {
  @override
  FormMemberState createState() {
    return FormMemberState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class FormMemberState extends State<FormMember> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  bool _switch = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Membro"),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            heroTag: null,
            onPressed: () {},
            materialTapTargetSize: MaterialTapTargetSize.padded,
            backgroundColor: Colors.blue,
            child: const Icon(Icons.check, size: 36.0),
          ),
        ],
      ),
      body: new Container(
        padding: const EdgeInsets.all(15.0),
        alignment: Alignment.center,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  hintText: 'Nome',
                ),
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
              /*DateTimeField(
                format: new DateFormat("dd/MM/yyyy"),
                decoration: InputDecoration(
                  labelText: 'Data de Nascimento',
                ),
                onShowPicker: (context, currentValue) {
                  return showDatePicker(
                      context: context,
                      locale: Locale('pt'),
                      firstDate: DateTime(1950),
                      initialDate: currentValue ?? DateTime.now(),
                      lastDate: DateTime(2100));
                },
              ),*/
              Text("Consome bebida alcoolica?"),
              Center(
                  child: Switch(
                    onChanged: (bool value){
                      setState(() {
                        this._switch = value;
                      });
                    },
                    value: this._switch,
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
