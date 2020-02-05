import 'package:flutter_firestore/models/todo.dart';
import 'package:flutter_firestore/repository/todo_repository.dart';
import 'package:mobx/mobx.dart';
part 'todo_controller.g.dart';

enum VisibilityFilter { all, pending, completed }

class TodoController = __TodoControllerList with _$TodoController;

abstract class __TodoControllerList with Store {
  __TodoControllerList() {
    getTodos();
  }

  final repository = new TodoRepository();

  @observable
  ObservableFuture<List<Todo>> todos = ObservableFuture<List<Todo>>.value([]);

  @observable
  VisibilityFilter filter = VisibilityFilter.all;

  @observable
  String currentDescription = '';

  @computed
  ObservableList<Todo> get pendingTodos =>
      ObservableList.of(todos.value.where((todo) => todo.done != true));

  @computed
  ObservableList<Todo> get completedTodos =>
      ObservableList.of(todos.value.where((todo) => todo.done == true));

  @computed
  ObservableList<Todo> get allTodos => ObservableList.of(todos.value);

  @computed
  bool get hasCompletedTodos => completedTodos.isNotEmpty;

  @computed
  bool get hasPendingTodos => pendingTodos.isNotEmpty;

  @computed
  String get itemsDescription {
    if (todos.value.isEmpty) {
      return "Nenhuma tarefa cadastrada";
    }

    final prefix = pendingTodos.length == 1 ? 'tarefa' : 'tarefas';
    final suffix = pendingTodos.length == 1 ? 'completa' : 'completas';
    return '${pendingTodos.length} $prefix pendente, ${completedTodos.length} $suffix';
  }

  @computed
  ObservableList<Todo> get visibleTodos {
    switch (filter) {
      case VisibilityFilter.pending:
        return pendingTodos;
      case VisibilityFilter.completed:
        return completedTodos;
      default:
        return allTodos;
    }
  }

  @computed
  bool get canRemoveAllCompleted =>
      hasCompletedTodos && filter != VisibilityFilter.pending;

  @computed
  bool get canMarkAllCompleted =>
      hasPendingTodos && filter != VisibilityFilter.completed;

  @action
  Future<void> addTodo(String description) async {
    final todo = Todo(description: description);
    await repository.add(todo);
    currentDescription = '';
  }

  @action
  Future<void> removeTodo(Todo todo) async {
    await repository.delete(todo);
  }

  @action
  void changeDescription(String description) =>
      currentDescription = description;

  @action
  void changeFilter(VisibilityFilter filter) => this.filter = filter;

  @action
  void removeCompleted() {
    //todos.removeWhere((todo) => todo.done);
  }

  @action
  void markAllAsCompleted() {
    for (final todo in todos.value) {
      todo.done = true;
    }
  }

  @action
  Future<void> getTodos() async {
    var data = await repository.getAll();
    todos = ObservableFuture<List<Todo>>.value(data);
  }
}
