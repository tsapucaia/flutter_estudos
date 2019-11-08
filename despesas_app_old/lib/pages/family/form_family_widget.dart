
import 'package:despesas_app/pages/family/form_member_widget.dart';
import 'package:despesas_app/pages/family/list_member_widget.dart';
import 'package:flutter/material.dart';

// Create a Form widget.
class FormFamily extends StatefulWidget {
  @override
  FormFamilyState createState() {
    return FormFamilyState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class FormFamilyState extends State<FormFamily> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Familia"),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              onAddPressed();
            },
            materialTapTargetSize: MaterialTapTargetSize.padded,
            backgroundColor: Colors.blue,
            child: const Icon(Icons.add, size: 36.0),
          ),
          SizedBox(
            height: 16.0,
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () { },
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
                  hintText: 'Nome Familia',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
              new Expanded(child: ListMemberWidget())
            ],
          ),
        ),
      ),
    );
  }

  void onAddPressed() {
    print("Add pressionado!!");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FormMember()),
    );
  }
}
