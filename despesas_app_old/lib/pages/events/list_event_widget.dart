
import 'package:despesas_app/pages/events/card_event_widget.dart';
import 'package:flutter/material.dart';

class ListEventWidget extends StatelessWidget {
  ListEventWidget();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(4.0),
        itemCount: 20,
        itemBuilder: (context, index) {
          return CardEvent();
        });
  }
}