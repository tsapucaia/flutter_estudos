import 'package:flutter/material.dart';
import 'package:flutter_firestore/controllers/todo_controller.dart';
import 'package:flutter_firestore/widgets/actionbar.dart';
import 'package:flutter_firestore/widgets/add.dart';
import 'package:flutter_firestore/widgets/description.dart';
import 'package:flutter_firestore/widgets/list_view.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Provider<TodoController>(
        create: (_) => TodoController(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Todos'),
          ),
          body: Column(
            children: <Widget>[
              AddTodo(),
              ActionBar(),
              Description(),
              TodoListView()
            ],
          ),
        ),
      );
}
