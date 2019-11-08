
import 'package:despesas_app/pages/events/list_event_widget.dart';
import 'package:flutter/material.dart';

class PlaceholderEventWidget extends StatelessWidget {
  PlaceholderEventWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListEventWidget()
    );
  }
}