import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  final Color primaryColor;
  final Color backgroundColor;

  Register({Key key, this.primaryColor, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column());
  }
}
