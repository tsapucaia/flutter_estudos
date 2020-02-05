import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
part 'todo.g.dart';

@JsonSerializable()
class Todo = _Todo with _$Todo;

abstract class _Todo with Store {
  _Todo({this.description, this.done, this.documentId});

  @observable
  String documentId;

  @observable
  String description = '';

  @observable
  bool done = false;

  factory _Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
  Map<String, dynamic> toJson() => _$TodoToJson(this);

  factory _Todo.fromSnapshot(DocumentSnapshot snap) {
    return Todo(
      documentId: snap.documentID,
      description: snap.data['description'],
      done: snap.data['done'],
    );
  }

  Map<String, Object> toDocument() {
    return {
      "documentoId": documentId,
      "description": description,
      "done": done,
    };
  }
}
