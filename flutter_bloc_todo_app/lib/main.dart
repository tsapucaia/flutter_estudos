import 'package:flutter/material.dart';
import 'package:flutter_bloc_todo_app/ui/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reactive Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //Our only screen/page we have
      home: HomePage(title: 'My Todo List'),
    );
  }
}

