
import 'package:despesas_app/pages/family/card_family_widget.dart';
import 'package:flutter/material.dart';

class ListFamilyWidget extends StatelessWidget {
  ListFamilyWidget();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(4.0),
        itemCount: 20,
        itemBuilder: (context, index) {
          return CardFamily();
        });
  }
}