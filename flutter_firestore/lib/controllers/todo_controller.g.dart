// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoController on __TodoControllerList, Store {
  Computed<ObservableList<Todo>> _$pendingTodosComputed;

  @override
  ObservableList<Todo> get pendingTodos => (_$pendingTodosComputed ??=
          Computed<ObservableList<Todo>>(() => super.pendingTodos))
      .value;
  Computed<ObservableList<Todo>> _$completedTodosComputed;

  @override
  ObservableList<Todo> get completedTodos => (_$completedTodosComputed ??=
          Computed<ObservableList<Todo>>(() => super.completedTodos))
      .value;
  Computed<ObservableList<Todo>> _$allTodosComputed;

  @override
  ObservableList<Todo> get allTodos => (_$allTodosComputed ??=
          Computed<ObservableList<Todo>>(() => super.allTodos))
      .value;
  Computed<bool> _$hasCompletedTodosComputed;

  @override
  bool get hasCompletedTodos => (_$hasCompletedTodosComputed ??=
          Computed<bool>(() => super.hasCompletedTodos))
      .value;
  Computed<bool> _$hasPendingTodosComputed;

  @override
  bool get hasPendingTodos => (_$hasPendingTodosComputed ??=
          Computed<bool>(() => super.hasPendingTodos))
      .value;
  Computed<String> _$itemsDescriptionComputed;

  @override
  String get itemsDescription => (_$itemsDescriptionComputed ??=
          Computed<String>(() => super.itemsDescription))
      .value;
  Computed<ObservableList<Todo>> _$visibleTodosComputed;

  @override
  ObservableList<Todo> get visibleTodos => (_$visibleTodosComputed ??=
          Computed<ObservableList<Todo>>(() => super.visibleTodos))
      .value;
  Computed<bool> _$canRemoveAllCompletedComputed;

  @override
  bool get canRemoveAllCompleted => (_$canRemoveAllCompletedComputed ??=
          Computed<bool>(() => super.canRemoveAllCompleted))
      .value;
  Computed<bool> _$canMarkAllCompletedComputed;

  @override
  bool get canMarkAllCompleted => (_$canMarkAllCompletedComputed ??=
          Computed<bool>(() => super.canMarkAllCompleted))
      .value;

  final _$todosAtom = Atom(name: '__TodoControllerList.todos');

  @override
  ObservableFuture<List<Todo>> get todos {
    _$todosAtom.context.enforceReadPolicy(_$todosAtom);
    _$todosAtom.reportObserved();
    return super.todos;
  }

  @override
  set todos(ObservableFuture<List<Todo>> value) {
    _$todosAtom.context.conditionallyRunInAction(() {
      super.todos = value;
      _$todosAtom.reportChanged();
    }, _$todosAtom, name: '${_$todosAtom.name}_set');
  }

  final _$filterAtom = Atom(name: '__TodoControllerList.filter');

  @override
  VisibilityFilter get filter {
    _$filterAtom.context.enforceReadPolicy(_$filterAtom);
    _$filterAtom.reportObserved();
    return super.filter;
  }

  @override
  set filter(VisibilityFilter value) {
    _$filterAtom.context.conditionallyRunInAction(() {
      super.filter = value;
      _$filterAtom.reportChanged();
    }, _$filterAtom, name: '${_$filterAtom.name}_set');
  }

  final _$currentDescriptionAtom =
      Atom(name: '__TodoControllerList.currentDescription');

  @override
  String get currentDescription {
    _$currentDescriptionAtom.context
        .enforceReadPolicy(_$currentDescriptionAtom);
    _$currentDescriptionAtom.reportObserved();
    return super.currentDescription;
  }

  @override
  set currentDescription(String value) {
    _$currentDescriptionAtom.context.conditionallyRunInAction(() {
      super.currentDescription = value;
      _$currentDescriptionAtom.reportChanged();
    }, _$currentDescriptionAtom, name: '${_$currentDescriptionAtom.name}_set');
  }

  final _$addTodoAsyncAction = AsyncAction('addTodo');

  @override
  Future<void> addTodo(String description) {
    return _$addTodoAsyncAction.run(() => super.addTodo(description));
  }

  final _$removeTodoAsyncAction = AsyncAction('removeTodo');

  @override
  Future<void> removeTodo(Todo todo) {
    return _$removeTodoAsyncAction.run(() => super.removeTodo(todo));
  }

  final _$getTodosAsyncAction = AsyncAction('getTodos');

  @override
  Future<void> getTodos() {
    return _$getTodosAsyncAction.run(() => super.getTodos());
  }

  final _$__TodoControllerListActionController =
      ActionController(name: '__TodoControllerList');

  @override
  void changeDescription(String description) {
    final _$actionInfo = _$__TodoControllerListActionController.startAction();
    try {
      return super.changeDescription(description);
    } finally {
      _$__TodoControllerListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeFilter(VisibilityFilter filter) {
    final _$actionInfo = _$__TodoControllerListActionController.startAction();
    try {
      return super.changeFilter(filter);
    } finally {
      _$__TodoControllerListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCompleted() {
    final _$actionInfo = _$__TodoControllerListActionController.startAction();
    try {
      return super.removeCompleted();
    } finally {
      _$__TodoControllerListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void markAllAsCompleted() {
    final _$actionInfo = _$__TodoControllerListActionController.startAction();
    try {
      return super.markAllAsCompleted();
    } finally {
      _$__TodoControllerListActionController.endAction(_$actionInfo);
    }
  }
}
