
import 'package:despesas_app/pages/family/card_member_widget.dart';
import 'package:flutter/material.dart';

class ListMemberWidget extends StatelessWidget {
  ListMemberWidget();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(4.0),
        itemCount: 2,
        itemBuilder: (context, index) {
          return CardMember();
        });
  }
}