import 'package:flutter/material.dart';
import 'package:flutter_mobx_todolist/controllers/todo_controller.dart';
import 'package:provider/provider.dart';

class AddTodo extends StatelessWidget {
  final _textController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    final list = Provider.of<TodoController>(context);

    return TextField(
      autofocus: true,
      decoration: const InputDecoration(
        labelText: 'Nova tarefa',
        contentPadding: EdgeInsets.all(8),
      ),
      controller: _textController,
      onChanged: (String newValue) {
        list.currentDescription = newValue;
      },
      onSubmitted: (String value) {
        list.addTodo(value);
        _textController.clear();
      },
    );
  }
}
