import 'package:flutter/material.dart';
import 'package:flutter_login_screens/misc/rating.dart';

import 'login_screen.dart';
import 'login_screen_2.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Login Screen 1',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.indigo,
    Colors.pinkAccent,
    Colors.blue
  ];
  List<int> _ratings = [
    4,
    2,
    3,
    4,
    3,
    5,
    2,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: LoginScreen(
                  primaryColor: Color(0xFF4aa0d5),
                  backgroundColor: Colors.white,
                  backgroundImage: new AssetImage("assets/images/full-bloom.png"),
                ),
              )
            ],
          ),
        ));
  }
}
