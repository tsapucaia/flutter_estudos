import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_todolist/controllers/todo_controller.dart';
import 'package:provider/provider.dart';

class ActionBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = Provider.of<TodoController>(context);

    return Column(
      children: <Widget>[
        Observer(
          builder: (_) => Column(
            children: <Widget>[
              RadioListTile(
                  dense: true,
                  title: const Text('Todos'),
                  value: VisibilityFilter.all,
                  groupValue: list.filter,
                  onChanged: (filter) => list.filter = filter),
              RadioListTile(
                  dense: true,
                  title: const Text('Pendentes'),
                  value: VisibilityFilter.pending,
                  groupValue: list.filter,
                  onChanged: (filter) => list.filter = filter),
              RadioListTile(
                  dense: true,
                  title: const Text('Completos'),
                  value: VisibilityFilter.completed,
                  groupValue: list.filter,
                  onChanged: (filter) => list.filter = filter),
            ],
          ),
        ),
        Observer(
          builder: (_) => ButtonBar(
            children: <Widget>[
              RaisedButton(
                child: const Text('Remover completos'),
                onPressed:
                    list.canRemoveAllCompleted ? list.removeCompleted : null,
              ),
              RaisedButton(
                child: const Text('Completar todos'),
                onPressed:
                    list.canMarkAllCompleted ? list.markAllAsCompleted : null,
              )
            ],
          ),
        )
      ],
    );
  }
}
