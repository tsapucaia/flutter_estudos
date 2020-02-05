import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_firestore/models/todo.dart';

class TodoRepository {
  final todoCollection = Firestore.instance.collection('todos');

  Future<void> add(Todo todo) {
    return todoCollection.add(todo.toDocument());
  }

  Future<void> delete(Todo todo) async {
    return todoCollection.document(todo.documentId).delete();
  }

  Future<List<Todo>> getAll() async {
    List<Todo> list = [];
    final snapshot = await todoCollection.getDocuments();

    snapshot.documents.forEach((doc) =>
        list.add(new Todo(description: doc["description"], done: doc["done"])));
    return list;
  }

  Future<List<Todo>> getCompleted() async {
    List<Todo> list = [];
    final snapshot =
        await todoCollection.where("done", isEqualTo: "true").getDocuments();

    snapshot.documents.forEach((doc) =>
        list.add(new Todo(description: doc["description"], done: doc["done"])));
    return list;
  }

  Future<List<Todo>> getPending() async {
    List<Todo> list = [];
    final snapshot =
        await todoCollection.where("done", isEqualTo: "false").getDocuments();

    snapshot.documents.forEach((doc) =>
        list.add(new Todo(description: doc["description"], done: doc["done"])));
    return list;
  }

  Future<void> update(Todo todo) async {
    return todoCollection
        .document(todo.documentId)
        .updateData(todo.toDocument());
  }
}
